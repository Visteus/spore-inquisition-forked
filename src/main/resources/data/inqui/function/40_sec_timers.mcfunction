#timer for events that happend every 45? secs
schedule function inqui:40_sec_timers 45s
#anti proto death
execute as @e[type=spore:proto] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air
#antibio
kill @e[type=item,nbt={Item:{id:"spore:freeze_burned_biomass"}}]
#vigil v2 summon
execute as @e[type=spore:inf_player, tag=inf_pla_boss] at @s if entity @e[distance=..30, type=!#spore:fungus_entities, type=!minecraft:item,type=!spore:inf_player] run summon spore:vigil ~ ~-10 ~
execute as @e[type=spore:inf_player, tag=inf_pla_boss] at @s if entity @e[distance=..30, type=!#spore:fungus_entities, type=!minecraft:item,type=!spore:inf_player] run spreadplayers ~ ~ 5 10 false @e[type=spore:vigil, distance=..20]
#licker
execute as @e[type=spore:licker] at @s run summon spore:mound ~ ~ ~ {age:1,max_age:1}
execute as @e[type=spore:licker] at @s run kill @s
#reddig
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..30] run function inqui:defense