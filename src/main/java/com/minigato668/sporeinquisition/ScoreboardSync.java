package com.minigato668.sporeinquisition;

import net.minecraft.network.chat.Component;
import net.minecraft.server.MinecraftServer;
import net.minecraft.world.scores.Objective;
import net.minecraft.world.scores.ScoreAccess;
import net.minecraft.world.scores.ScoreHolder;
import net.minecraft.world.scores.Scoreboard;
import net.minecraft.world.scores.criteria.ObjectiveCriteria;
import net.neoforged.bus.api.SubscribeEvent;
import net.neoforged.neoforge.event.server.ServerStartingEvent;
import net.neoforged.neoforge.event.server.ServerStoppedEvent;

/**
 * Bridges {@link SIConfig} values into the datapack's {@code !finale} scoreboards.
 *
 * <p>SERVER-type config values are only valid once a world has loaded, so the authoritative apply
 * happens in {@link ServerStartingEvent} (which runs on the server thread). A live {@code /reload}
 * or config edit is handled by {@link SporeInquisition}, which bounces back here via {@link #apply}
 * on the server thread.
 */
public final class ScoreboardSync {

    /** The fake-player holder every Spore Inquisition global score lives on. */
    private static final String HOLDER = "!finale";

    /** Running server, captured on start so reload events can find a scoreboard to write to. */
    static volatile MinecraftServer current;

    private ScoreboardSync() {
    }

    @SubscribeEvent
    public static void onServerStarting(ServerStartingEvent event) {
        current = event.getServer();
        apply(current);
    }

    @SubscribeEvent
    public static void onServerStopped(ServerStoppedEvent event) {
        current = null;
    }

    /** Reads the current config and writes every mapped objective. Must run on the server thread. */
    public static void apply(MinecraftServer server) {
        if (server == null) {
            return;
        }
        Scoreboard sb = server.getScoreboard();
        ScoreHolder finale = ScoreHolder.forNameOnly(HOLDER);

        //   no_ordeal: set 1 = disabled, unset = enabled
        //   dream:     set 1 = disabled, unset = enabled
        //   raids:     set 1 = disabled, 0 = enabled
        if (SIConfig.ORDEALS_ENABLED.get()) {
            reset(sb, finale, "no_ordeal");
        } else {
            set(sb, finale, "no_ordeal", 1);
        }
        if (SIConfig.DREAM_ENABLED.get()) {
            reset(sb, finale, "dream");
        } else {
            set(sb, finale, "dream", 1);
        }
        set(sb, finale, "raids", SIConfig.CALAMITY_RAIDS.get() ? 0 : 1);

        // New objectives consumed by the edited mcfunctions.
        set(sb, finale, "corruption_rate", SIConfig.CORRUPTION_RATE.get());
        set(sb, finale, "auto_finalitas", SIConfig.AUTOMATIC_FINALITAS.get() ? 1 : 0);
        set(sb, finale, "offer1", SIConfig.OFFERING1_AMOUNT.get());
        set(sb, finale, "offer2", SIConfig.OFFERING2_AMOUNT.get());
        set(sb, finale, "offer3", SIConfig.OFFERING3_AMOUNT.get());
        set(sb, finale, "ord_thr1", SIConfig.ORDEAL_THRESHOLD1.get());
        set(sb, finale, "ord_thr2", SIConfig.ORDEAL_THRESHOLD2.get());
        set(sb, finale, "ord_thr3", SIConfig.ORDEAL_THRESHOLD3.get());
        set(sb, finale, "ord_thr4", SIConfig.ORDEAL_THRESHOLD4.get());
    }

    private static Objective objective(Scoreboard sb, String name) {
        Objective obj = sb.getObjective(name);
        if (obj == null) {
            obj = sb.addObjective(name, ObjectiveCriteria.DUMMY, Component.literal(name),
                    ObjectiveCriteria.RenderType.INTEGER, false, null);
        }
        return obj;
    }

    private static void set(Scoreboard sb, ScoreHolder holder, String objName, int value) {
        ScoreAccess access = sb.getOrCreatePlayerScore(holder, objective(sb, objName));
        access.set(value);
    }

    private static void reset(Scoreboard sb, ScoreHolder holder, String objName) {
        ScoreAccess access = sb.getOrCreatePlayerScore(holder, objective(sb, objName));
        access.reset();
    }
}
