gamerule commandModificationBlockLimit 999999999
execute at @s as @e[distance= ..25, type=#spore:fungus_entities] run data merge entity @s {TicksFrozen:900}
particle minecraft:snowflake ~ ~ ~ 0 0 0 1 1000 normal
fill ~-25 ~-25 ~-25 ~25 ~25 ~25 spore:freeze_burned_biomass replace #spore:fungal_blocks
playsound minecraft:entity.player.hurt_freeze neutral @a[distance= ..30 ] ~ ~ ~ 1 0.1 1
kill @s