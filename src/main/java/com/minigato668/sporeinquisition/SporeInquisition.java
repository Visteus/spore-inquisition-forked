package com.minigato668.sporeinquisition;

import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.packs.PackType;
import net.minecraft.server.packs.repository.Pack;
import net.minecraft.server.packs.repository.PackSource;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.fml.ModContainer;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.config.ModConfig;
import net.neoforged.fml.event.config.ModConfigEvent;
import net.neoforged.neoforge.common.NeoForge;
import net.neoforged.neoforge.event.AddPackFindersEvent;

// A thin java layer that handles config files
@Mod(SporeInquisition.MODID)
public class SporeInquisition {

    public static final String MODID = "sporeinquisition";

    public SporeInquisition(IEventBus modBus, ModContainer modContainer) {
        // Land our replacement spore-*.toml configs on disk before spore parses them. This runs first,
        // and we're ordered BEFORE spore (neoforge.mods.toml), so the changes take effect this launch.
        SporeConfigInstaller.install();

        // Per-world SERVER config with our own filename, kept separate from the spore-*.toml files.
        modContainer.registerConfig(ModConfig.Type.SERVER, SIConfig.SPEC, "spore-inquisition-server.toml");

        // Game-bus events (ServerStartingEvent / ServerStoppedEvent) — where we can reach the scoreboard.
        NeoForge.EVENT_BUS.register(ScoreboardSync.class);

        // Mod-bus config events. These carry no server reference, so we only use Reloading as a
        // trigger and re-apply on the server thread if a world is running.
        modBus.addListener(this::onConfigReloading);

        modBus.addListener(this::onAddPackFinders);
    }

    private void onConfigReloading(ModConfigEvent.Reloading event) {
        if (event.getConfig().getSpec() != SIConfig.SPEC) {
            return;
        }
        var server = ScoreboardSync.current;
        if (server != null) {
            server.execute(() -> ScoreboardSync.apply(server));
        }
    }

    // NeoForge's built-in "mod data" packs are layered alphabetically by modid, not by the
    // ordering= dependency in neoforge.mods.toml — so "spore" always outranks "sporeinquisition"
    // there and wins any overlapping data/spore/* path. This registers our replacements for
    // spore's own data (src/main/resources/datapacks/spore_overrides/) as a separate, always-on,
    // top-priority pack so they win regardless of mod load/name order.
    private void onAddPackFinders(AddPackFindersEvent event) {
        event.addPackFinders(
                ResourceLocation.fromNamespaceAndPath(MODID, "datapacks/spore_overrides"),
                PackType.SERVER_DATA,
                Component.literal("Spore Inquisition Overrides"),
                PackSource.BUILT_IN,
                true,
                Pack.Position.TOP);
    }
}
