# Spore Inquisition (reverse-engineered workspace)

A Gradle workspace for inspecting and modifying the **Spore Inquisition** NeoForge mod
(`spore_inquisition_3.1_neo.jar`).

## What this mod is

Spore Inquisition (`modId: sporeinquisition`, v3.1, by Minigato668) is a **pure
data + resource pack add-on** — it ships **no compiled Java/Kotlin code**. All of
its content is datapack/resourcepack files plus NeoForge mod metadata.

| Platform | Version |
|----------|---------|
| Minecraft | 1.21.1 |
| Loader | NeoForge `>= 21.1.212` |

### Required companion mods (declared dependencies)
- `spore` `>= 2.1.3` (loaded **after**)
- plus content targeting `create`, `farmersdelight`, `incendium`

## Layout

```
src/main/resources/
├── META-INF/neoforge.mods.toml   # mod metadata
├── assets/                       # models, textures, sounds (resource pack)
│   ├── inqui/  spore/  ...
├── data/                         # datapack: recipes, loot, worldgen, functions, tags
│   ├── inqui/  spore/  create/  farmersdelight/  incendium/  minecraft/
├── configs/                      # bundled spore-*.toml config defaults
├── pack.mcmeta  pack.png  background.png  load_order.json
```

The unpacked content lives under `src/main/resources` (standard Gradle layout) so
that `./gradlew build` reproduces an equivalent mod jar. The original
`META-INF/MANIFEST.MF` is intentionally omitted — Gradle regenerates it.

## Building

```sh
./gradlew build
```

Output jar: `build/libs/sporeinquisition-3.1.jar`.

## Running in dev

```sh
./gradlew runClient
./gradlew runServer
```

⚠️ The run tasks launch vanilla + NeoForge only. The companion mods
(`spore`, `create`, `farmersdelight`, `incendium`) are not on a public Maven repo,
so most of this mod's content will error or no-op at runtime until those jars are
added to the run instance's mods folder. Building the jar does not need them.
