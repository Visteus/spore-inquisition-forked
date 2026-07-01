package com.minigato668.sporeinquisition;

import net.neoforged.bus.api.IEventBus;
import net.neoforged.fml.ModContainer;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.config.ModConfig;
import net.neoforged.fml.event.config.ModConfigEvent;
import net.neoforged.neoforge.common.NeoForge;

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
}
