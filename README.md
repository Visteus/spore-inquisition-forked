# Spore Inquisition - Unofficial Fork

A personal project to modify [Spore Inquisition](https://www.curseforge.com/minecraft/mc-mods/spore-inquisition). Adds a thin java wrapper for configurations, plus changes to the original mcfunctions of the mod.

## Changes from Original
1. Configuration file `sporeinquisition-server.toml` for tweaking different levers of the mod.
2. New configurations including ordeal levels, gift values, corruption rate, and automatic triggers of the final fight. 
3. Some optimizations around the final fight setup to help keep it from crashing worlds/servers.
4. Minor fixes here and there, mostly the use of relative coordinates which could cause some real problems
5. Replacement spore configs (`spore-common.toml`, `spore-startup.toml`) are installed automatically before `spore` checks if it needs to install configs. They're refreshed whenever the bundled configs change (fresh install or mod update) and otherwise left alone, so user edits to spore's config should be preserved. Users may need to delete configs to refresh them. 

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

## Building
Requires Java 21 JDK for building.

Version and other information are set in primarily in `gradle.properties`.

```sh
./gradlew build
```

Output jar will be under /build/libs
