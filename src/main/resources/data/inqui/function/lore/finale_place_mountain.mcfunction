#Place mountain (~24 MB) on its own tick. Chunks were force-loaded back at lore/6, so this only sets
#blocks (no chunk generation). This is still the single heaviest command in the finale; keeping it on
#its own scheduled tick, separate from the tower placement and the teleport, keeps any stutter isolated.
# say [SI-DBG] finale_place_mountain: BEFORE placing mountain (210x380x210, ~16.7M blocks)
execute in inqui:finalitas run place template inqui:mountain -100 250 -100
# say [SI-DBG] finale_place_mountain: AFTER placing mountain (survived)
