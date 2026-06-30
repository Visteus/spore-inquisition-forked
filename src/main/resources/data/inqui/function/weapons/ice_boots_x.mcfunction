#kill
execute as @s at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace #spore:removable_foliage
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace spore:bile
execute as @s at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 spore:frozen_remains replace spore:remains
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..32] minecraft:weakness 2 0
execute as @s at @s run advancement revoke @s only inqui:w_ice_boots_x
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true