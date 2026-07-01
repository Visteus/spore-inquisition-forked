#timer for events that happend every 20 secs
schedule function inqui:20_sec_timers 20s
#buffs overcharged calamities
execute as @e[tag=overcharged_calamity] run function inqui:20sec_calls/calamity
#buffs overcharged evolved 
execute as @e[tag=overcharged_evolved] run function inqui:20sec_calls/evolved
#extra follow range
execute as @e[type=#spore:fungus_entities] run attribute @s minecraft:generic.follow_range base set 50
execute as @e[type=#inqui:evolved] run attribute @s minecraft:generic.follow_range base set 100
execute as @e[type=#inqui:hyper] run attribute @s minecraft:generic.follow_range base set 150
execute as @e[type=#inqui:calamity] run attribute @s minecraft:generic.follow_range base set 300
execute as @e[type=spore:proto] run attribute @s minecraft:generic.follow_range base set 300
execute as @e[tag=inf_pla_boss] run attribute @s minecraft:generic.follow_range base set 300
#CRRRRRUSTEDDDDD
execute as @e[type= spore:mound] at @s if block ~ ~1 ~ spore:crusted_bile run tp @s ~ ~2 ~
execute as @e[type= spore:mound] at @s if block ~ ~ ~ spore:crusted_bile run tp @s ~ ~2 ~
#rooted mycelium mound replacement function inqui:20sec_calls/bile
execute as @e[type= spore:mound] at @s if block ~ ~ ~ minecraft:air run function inqui:20sec_calls/bile
#V2
execute as @e[type=spore:inf_player, tag=inf_pla_boss] at @s if entity @a[distance=..30] run function inqui:20sec_calls/v2 
#apostle
execute as @e[tag=apostle] at @s run effect give @e[type=!#spore:fungus_entities,distance=..30] spore:mycelium_ef 300 1 true
#finale
#nunny
execute as @e[type=spore:proto,tag=nunny] run data merge entity @s {biomass:1000}
#die freeze burned biomass
#jumpman
execute as @e[tag=inf_pla_boss] at @s run data merge entity @s {Motion:[0.0,1.5,0.0]}
execute as @e[type=spore:inf_player, tag=inf_pla_boss] at @s if entity @a[distance=..25] run function inqui:15sec_calls/v2
#grober weakness
effect give @e[ type= spore:grober ] minecraft:weakness 25 0 true
#adaptation baby!
execute if score !finale proto matches 160.. run effect give @e[type=#inqui:adaptations] minecraft:fire_resistance 25 0 true
execute if score !finale proto matches 240.. run effect give @e[type=#inqui:adaptations] spore:symbiosis 25 0 true
execute if score !finale proto matches 320.. run tag @e[type=#inqui:calamity] add overcharged_calamity