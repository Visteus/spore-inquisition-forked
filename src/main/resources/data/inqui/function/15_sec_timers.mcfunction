#timer for events that happend every 20 secs
schedule function inqui:15_sec_timers 16s
#nuke chunkloader
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s run forceload add ~-32 ~-32 ~32 ~32
schedule e
#bad for him
execute as @e[ type=#spore:fungus_entities ] at @s if block ~ ~-1 ~ spore:freeze_burned_biomass run effect give @s minecraft:weakness 16 0 true
execute as @e[ type=#spore:fungus_entities ] at @s if block ~ ~-1 ~ spore:freeze_burned_biomass run effect give @s minecraft:slowness 16 0 true
#claw
execute as @e[type=spore:claw] at @s run fill ~ ~ ~ ~ ~ ~ spore:remains
execute as @e[type=spore:claw] at @s run tp @s ~ ~-200 ~