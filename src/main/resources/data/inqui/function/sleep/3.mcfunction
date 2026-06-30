#sleep2
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run gamemode survival @s
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run forceload add ~-50 ~-50 ~50 ~50
execute as @p[tag=sleep_executor,limit=1] at @s run advancement revoke @s only inqui:bad_1
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run effect give @s minecraft:resistance infinite 1 true
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run effect give @s minecraft:regeneration infinite 4 true
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run effect give @s minecraft:mining_fatigue infinite 4 true
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run effect give @s spore:symbiosis infinite 2 true
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run place template inqui:home ~-4 ~-15 ~-4
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run tag @s remove sleep_executor
