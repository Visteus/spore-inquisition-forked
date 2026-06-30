#chunckload for protos
schedule function inqui:chunckloader 300s
forceload remove all
#remove some overspawners
execute as @e[type= spore:mound] at @s if entity @e[type=spore:proto, distance= ..175] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 spore:organite replace spore:overgrown_spawner
# first layer proto
execute as @e[type=spore:proto, scores={F_F=1}] at @s run forceload add ~-100 ~-100 ~100 ~100
#second layer proto
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~ ~ ~100 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~ ~ ~-100 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~100 ~ ~ run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~100 ~ ~ run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~100 ~ ~100 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~-100 ~ ~100 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~-100 ~ ~-100 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~100 ~ ~-100 run forceload add ~-100 ~-100 ~100 ~100
#third layer proto
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~ ~ ~164 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~ ~ ~-164 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~164 ~ ~ run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~-164 ~ ~ run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~164 ~ ~164 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~-164 ~ ~164 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~-164 ~ ~-164 run forceload add ~-100 ~-100 ~100 ~100
execute as @e[type=spore:proto, scores={F_F=1}] at @s positioned ~164 ~ ~-164 run forceload add ~-100 ~-100 ~100 ~100
#water
gamerule commandModificationBlockLimit 999999999
execute as @e[type=spore:proto, scores={F_F=1}] at @s run fill ~250 62 ~250 ~-250 62 ~-250 spore:crusted_bile replace water
execute as @e[type=spore:proto, scores={F_F=1}] at @s run fill ~250 62 ~250 ~-250 62 ~-250 spore:crusted_bile replace bubble_column
# first layer red
#capullin
execute run forceload add ~-100 ~-100 ~100 ~100
