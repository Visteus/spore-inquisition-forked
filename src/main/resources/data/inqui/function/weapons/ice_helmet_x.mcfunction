#kill
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] minecraft:glowing 2 0
effect clear @s spore:mycelium_ef
effect clear @s spore:marker
effect clear @s spore:corrosion
effect clear @s spore:uneasy
effect clear @s spore:biled
effect clear @s spore:madness
effect clear @s minecraft:hunger
effect clear @s minecraft:slowness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:darkness
effect clear @s minecraft:blindness
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
execute as @s at @s run advancement revoke @s only inqui:w_ice_helmet_x
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true