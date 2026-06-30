#kill
execute at @s as @e[distance= ..8, type=#spore:fungus_entities] run data merge entity @s {TicksFrozen:200}
execute as @s at @s run particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 1 normal
execute as @s at @s run advancement revoke @s only inqui:w_ice_chest
execute if items entity @s weapon.mainhand #spore:weapons run effect give @s spore:frostbite 5 2 true
execute if items entity @s weapon.offhand #spore:weapons run effect give @s spore:frostbite 5 2 true