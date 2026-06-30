#kill
execute at @s as @e[distance= ..16, type=#spore:fungus_entities] run data merge entity @s {TicksFrozen:250}
execute as @s at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 1 normal
execute as @s at @s run advancement revoke @s only inqui:w_ice_chest_x
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true
effect give @e[type=#spore:fungus_entities,distance=..4] spore:frostbite 1 2
effect give @e[type=#spore:fungus_entities,distance=..8] spore:frostbite 1 1
effect give @e[type=#spore:fungus_entities,distance=..12] spore:frostbite 1 0