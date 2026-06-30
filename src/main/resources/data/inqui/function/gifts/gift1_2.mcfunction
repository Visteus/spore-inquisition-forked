effect give @p spore:symbiosis 1800 0 true
loot give @p loot inqui:chests/equipment_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot inqui:chests/organ_chest
loot give @p loot inqui:chests/organ_chest
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:sieger
tellraw @p {"text":"RedNight accepts your offering.","color":"#ff0000"}
scoreboard players add !finale proto 25
kill @s