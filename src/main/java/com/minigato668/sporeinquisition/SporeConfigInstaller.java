package com.minigato668.sporeinquisition;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.neoforged.fml.loading.FMLPaths;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Installs the bundled spore replacement configs into the instance config/ directory.
//
// Spore reads its own spore-common.toml / spore-startup.toml during its load. Because this mod is
// ordered BEFORE spore (see neoforge.mods.toml) and install() runs as the first statement of the
// SporeInquisition constructor, the files land on disk before spore parses them, so the replacement
// takes effect on the same launch.
//
// Gating is by content hash, stored in a marker file: we only overwrite a spore config when the
// bundled bytes differ from what we last wrote. That refreshes the file on install / mod update
// while leaving user edits alone in between (until the bundled file itself changes).
public final class SporeConfigInstaller {

    private static final Logger LOGGER = LoggerFactory.getLogger(SporeConfigInstaller.class);

    // spore's config filenames — must match exactly what spore registers.
    private static final List<String> FILES = List.of("spore-common.toml", "spore-startup.toml");
    private static final String MARKER = ".sporeinquisition_config_version";

    private SporeConfigInstaller() {
    }

    static void install() {
        try {
            Path configDir = FMLPaths.CONFIGDIR.get();
            Files.createDirectories(configDir);

            Map<String, String> marker = readMarker(configDir.resolve(MARKER));
            boolean markerChanged = false;

            for (String name : FILES) {
                try {
                    byte[] bundled = readBundled(name);
                    if (bundled == null) {
                        LOGGER.error("Bundled spore config /configs/{} is missing from the jar; skipping.", name);
                        continue;
                    }

                    String bundledHash = sha256Hex(bundled);
                    Path target = configDir.resolve(name);

                    if (Files.exists(target) && bundledHash.equals(marker.get(name))) {
                        // Bundled file unchanged since we last wrote it — respect any user edits.
                        LOGGER.debug("spore config {} is up to date; leaving it untouched.", name);
                        continue;
                    }

                    Files.write(target, bundled);
                    marker.put(name, bundledHash);
                    markerChanged = true;
                    LOGGER.info("Installed bundled spore config {} -> {}", name, target);
                } catch (Exception e) {
                    // Never let a single file failure crash mod loading.
                    LOGGER.error("Failed to install bundled spore config {}", name, e);
                }
            }

            if (markerChanged) {
                writeMarker(configDir.resolve(MARKER), marker);
            }
        } catch (Exception e) {
            LOGGER.error("Failed to install bundled spore configs", e);
        }
    }

    private static byte[] readBundled(String name) throws IOException {
        // Use this mod's own classloader — reliable across dev and production, unlike the TCCL during early load.
        try (InputStream in = SporeConfigInstaller.class.getResourceAsStream("/configs/" + name)) {
            if (in == null) {
                return null;
            }
            return in.readAllBytes();
        }
    }

    private static Map<String, String> readMarker(Path markerPath) {
        Map<String, String> map = new HashMap<>();
        if (!Files.exists(markerPath)) {
            return map;
        }
        try {
            for (String line : Files.readAllLines(markerPath, StandardCharsets.UTF_8)) {
                String trimmed = line.trim();
                if (trimmed.isEmpty() || trimmed.startsWith("#")) {
                    continue;
                }
                int eq = trimmed.indexOf('=');
                if (eq > 0) {
                    map.put(trimmed.substring(0, eq).trim(), trimmed.substring(eq + 1).trim());
                }
            }
        } catch (IOException e) {
            LOGGER.warn("Could not read config marker {}; treating configs as needing (re)install.", markerPath, e);
        }
        return map;
    }

    private static void writeMarker(Path markerPath, Map<String, String> marker) {
        StringBuilder sb = new StringBuilder();
        sb.append("# Written by Spore Inquisition. Maps each bundled spore config to the content hash last installed.\n");
        sb.append("# Delete this file (or a line) to force reinstalling that config on next launch.\n");
        marker.forEach((k, v) -> sb.append(k).append('=').append(v).append('\n'));
        try {
            Files.writeString(markerPath, sb.toString(), StandardCharsets.UTF_8);
        } catch (IOException e) {
            LOGGER.error("Failed to write config marker {}", markerPath, e);
        }
    }

    private static String sha256Hex(byte[] data) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                sb.append(Character.forDigit((b >> 4) & 0xF, 16));
                sb.append(Character.forDigit(b & 0xF, 16));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            // SHA-256 is guaranteed present on every JVM; this is unreachable.
            throw new IllegalStateException(e);
        }
    }
}
