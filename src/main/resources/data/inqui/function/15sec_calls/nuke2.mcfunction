#block filling and blindness effect
gamerule commandModificationBlockLimit 999999999
forceload add ~-100 ~-100 ~100 ~100
effect give @a[ distance= ..750] minecraft:blindness 10 1 true
execute at @s run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~ ~ ~100 run forceload add ~-100 ~-100 ~100 ~100

execute at @s positioned ~-400 ~ ~-400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~-200 ~ ~-400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~0 ~ ~-400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~200 ~ ~-400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~400 ~ ~-400 run forceload add ~-100 ~-100 ~100 ~100

execute at @s positioned ~-400 ~ ~-200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~-200 ~ ~-200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~0 ~ ~-200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~200 ~ ~-200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~400 ~ ~-200 run forceload add ~-100 ~-100 ~100 ~100

execute at @s positioned ~-400 ~ ~0 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~-200 ~ ~0 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~0 ~ ~0 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~200 ~ ~0 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~400 ~ ~0 run forceload add ~-100 ~-100 ~100 ~100

execute at @s positioned ~-400 ~ ~200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~-200 ~ ~200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~0 ~ ~200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~200 ~ ~200 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~400 ~ ~200 run forceload add ~-100 ~-100 ~100 ~100

execute at @s positioned ~-400 ~ ~400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~-200 ~ ~400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~0 ~ ~400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~200 ~ ~400 run forceload add ~-100 ~-100 ~100 ~100
execute at @s positioned ~400 ~ ~400 run forceload add ~-100 ~-100 ~100 ~100
#less world corruption
scoreboard players remove !finale proto 75
#kill entities and freeze bastards
execute at @s as @e[distance= ..500, type=#spore:fungus_entities] run data merge entity @s {TicksFrozen:9999}
fill ~500 ~-200 ~500 ~-500 ~200 ~-500 minecraft:air replace #spore:fungal_blocks
fill ~500 ~-150 ~500 ~-500 ~150 ~-500 minecraft:air replace #spore:fungal_blocks
fill ~500 ~-128 ~500 ~-500 ~128 ~-500 minecraft:air replace #spore:fungal_blocks
fill ~500 ~-100 ~500 ~-500 ~100 ~-500 minecraft:air replace #spore:fungal_blocks
fill ~500 ~-75 ~500 ~-500 ~75 ~-500 minecraft:air replace #spore:fungal_blocks
fill ~500 ~-50 ~500 ~-500 ~50 ~-500 minecraft:air replace #spore:fungal_blocks
fillbiome ~400 ~50 ~400 ~-400 ~-50 ~-400 minecraft:snowy_taiga
fillbiome ~400 ~75 ~400 ~-400 ~-75 ~-400 minecraft:snowy_taiga
fillbiome ~400 ~100 ~400 ~-400 ~-100 ~-400 minecraft:snowy_taiga
fillbiome ~400 ~128 ~400 ~-400 ~-128 ~-400 minecraft:snowy_taiga
fillbiome ~400 ~150 ~400 ~-400 ~-150 ~-400 minecraft:snowy_taiga
fillbiome ~400 ~200 ~400 ~-400 ~-200 ~-400 minecraft:snowy_taiga
execute at @a[ distance= ..900] run playsound minecraft:block.amethyst_block.chime neutral @a ~ ~ ~ 30 0.1 0
weather thunder
forceload remove all
kill @s
kill @e[type=item]