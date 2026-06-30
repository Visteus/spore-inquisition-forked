#kill
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..32] minecraft:slowness 2 0
execute as @s at @s run advancement revoke @s only inqui:w_ice_leegs_x
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true
effect give @s minecraft:speed 5 0 true
effect give @s minecraft:haste 5 0 true
effect give @s minecraft:jump_boost 5 1 true