package com.minigato668.sporeinquisition;

import net.neoforged.neoforge.common.ModConfigSpec;

/**
 * Server-side (per-world) config for Spore Inquisition.
 *
 * <p>This is a thin add-on config kept entirely separate from the {@code spore-*.toml} files,
 * which are shipped by the base "spore" mod and are not ours. Values here are pushed into the
 * datapack's {@code !finale} scoreboards by {@link ScoreboardSync} on server start / config
 * reload; the mcfunctions then consume those scoreboards.
 *
 * <p>Generated at {@code <world>/serverconfig/spore-inquisition-server.toml}.
 */
public final class SIConfig {

    public static final ModConfigSpec SPEC;

    // --- toggles ---
    public static final ModConfigSpec.BooleanValue ORDEALS_ENABLED;
    public static final ModConfigSpec.BooleanValue CALAMITY_RAIDS;
    public static final ModConfigSpec.BooleanValue AUTOMATIC_FINALITAS;
    public static final ModConfigSpec.BooleanValue DREAM_ENABLED;

    // --- tuning ---
    public static final ModConfigSpec.IntValue CORRUPTION_RATE;
    public static final ModConfigSpec.IntValue OFFERING1_AMOUNT;
    public static final ModConfigSpec.IntValue OFFERING2_AMOUNT;
    public static final ModConfigSpec.IntValue OFFERING3_AMOUNT;
    public static final ModConfigSpec.IntValue ORDEAL_THRESHOLD1;
    public static final ModConfigSpec.IntValue ORDEAL_THRESHOLD2;
    public static final ModConfigSpec.IntValue ORDEAL_THRESHOLD3;
    public static final ModConfigSpec.IntValue ORDEAL_THRESHOLD4;

    static {
        ModConfigSpec.Builder b = new ModConfigSpec.Builder();

        b.comment("Top-level on/off switches for major Spore Inquisition systems.").push("toggles");
        ORDEALS_ENABLED = b
                .comment("Enable proto Ordeals (timed boss waves). false fully disables them.")
                .define("ordealsEnabled", true);
        CALAMITY_RAIDS = b
                .comment("Enable calamity Raids (Eclipse). false fully disables them.")
                .define("calamityRaids", true);
        AUTOMATIC_FINALITAS = b
                .comment(
                        "true: world corruption rises to 100% and triggers Finalitas automatically (vanilla behavior).",
                        "false: natural corruption is capped at 99%; only an offering (given at max corruption) can",
                        "       begin Finalitas, which plays the lore sequence (~90s) while the dimension warms up.")
                .define("automaticFinalitas", true);
        DREAM_ENABLED = b
                .comment("Enable the death-dream / parallax event. false disables it.")
                .define("dreamEnabled", true);
        b.pop();

        b.comment("Numeric tuning knobs. These seed scoreboards the datapack reads.").push("tuning");
        CORRUPTION_RATE = b
                .comment("World corruption added per Proto / Rednight mound every 30-minute cycle. Default 1.")
                .defineInRange("corruptionRate", 1, 0, 10000);
        OFFERING1_AMOUNT = b
                .comment("Corruption granted by the tier-1 offering (gift1). Default 25.")
                .defineInRange("offering1Amount", 25, 0, 10000);
        OFFERING2_AMOUNT = b
                .comment("Corruption granted by the tier-2 offering (gift2). Default 50.")
                .defineInRange("offering2Amount", 50, 0, 10000);
        OFFERING3_AMOUNT = b
                .comment("Corruption granted by the tier-3 offering (gift3). Default 100.")
                .defineInRange("offering3Amount", 100, 0, 10000);
        ORDEAL_THRESHOLD1 = b
                .comment("Corruption level at which ordeal wave tier 1 escalation begins. Default 70.")
                .defineInRange("ordealThreshold1", 70, 0, 10000);
        ORDEAL_THRESHOLD2 = b
                .comment("Corruption level for ordeal wave tier 2. Default 140.")
                .defineInRange("ordealThreshold2", 140, 0, 10000);
        ORDEAL_THRESHOLD3 = b
                .comment("Corruption level for ordeal wave tier 3. Default 210.")
                .defineInRange("ordealThreshold3", 210, 0, 10000);
        ORDEAL_THRESHOLD4 = b
                .comment("Corruption level for ordeal wave tier 4. Default 280.")
                .defineInRange("ordealThreshold4", 280, 0, 10000);
        b.pop();

        SPEC = b.build();
    }

    private SIConfig() {
    }
}
