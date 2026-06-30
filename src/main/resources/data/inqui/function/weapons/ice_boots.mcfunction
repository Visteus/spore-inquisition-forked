#kill
execute as @s at @s run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 minecraft:air replace #spore:removable_foliage
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..16] minecraft:weakness 2 0
execute as @s at @s run advancement revoke @s only inqui:w_ice_boots
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true