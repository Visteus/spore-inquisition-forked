effect give @p spore:symbiosis 3600 1 true
loot give @p loot inqui:chests/equipment_chest_x
loot give @p loot inqui:chests/organ_chest
loot give @p loot inqui:chests/organ_chest
loot give @p loot inqui:chests/organ_chest
loot give @p loot inqui:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
loot give @p loot spore:chests/organ_chest
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:sieger
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:gazenbreacher
tellraw @p {"text":"RedNight accepts your offering.","color":"#ff0000"}
scoreboard players add !finale proto 50
kill @s