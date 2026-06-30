#kill
execute as @s at @s run effect give @s minecraft:hunger 5 2 true
execute as @s at @s run effect give @s minecraft:jump_boost 5 0 true
execute as @s at @s run effect give @s minecraft:speed 5 1 true
execute as @s at @s run effect give @s minecraft:strength 5 0 true
execute as @s at @s run effect give @s minecraft:haste 5 0 true
execute as @s at @s run effect give @s minecraft:dolphins_grace 5 1 true
#mimicry removal
execute as @s at @s run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 minecraft:air replace #spore:removable_foliage

execute as @s at @s run advancement revoke @s only inqui:w_m