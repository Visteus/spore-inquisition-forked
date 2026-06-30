gamerule commandModificationBlockLimit 999999999
forceload add ~-100 ~-100 ~100 ~100
effect give @a[ distance= ..125] minecraft:blindness 4 0 true
execute at @s as @e[distance= ..125, type=#spore:fungus_entities] run data merge entity @s {TicksFrozen:2500}
fill ~100 ~-100 ~100 ~-100 ~100 ~-100 minecraft:packed_ice replace #spore:fungal_blocks
fill ~100 ~-75 ~100 ~-100 ~75 ~-100 minecraft:packed_ice replace #spore:fungal_blocks
fill ~100 ~-50 ~100 ~-100 ~50 ~-100 minecraft:packed_ice replace #spore:fungal_blocks
fill ~100 ~-25 ~100 ~-100 ~25 ~-100 minecraft:packed_ice replace #spore:fungal_blocks
fillbiome ~100 ~100 ~100 ~-100 ~-100 ~-100 minecraft:ice_spikes
fillbiome ~100 ~75 ~100 ~-100 ~-75 ~-100 minecraft:ice_spikes
fillbiome ~100 ~50 ~100 ~-100 ~-50 ~-100 minecraft:ice_spikes
fillbiome ~100 ~25 ~100 ~-100 ~-25 ~-100 minecraft:ice_spikes
execute at @a[ distance= ..200] run playsound minecraft:block.amethyst_block.chime neutral @a ~ ~ ~ 30 1 0
kill @s