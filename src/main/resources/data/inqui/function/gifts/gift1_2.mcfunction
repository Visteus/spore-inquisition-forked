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
#offering corruption is config-driven (offer1). With automatic finalitas OFF, an offering given at
#max corruption (396 = 99%) begins the finale instead of merely adding corruption.
execute unless score !finale auto_finalitas matches 0 run scoreboard players operation !finale proto += !finale offer1
execute if score !finale auto_finalitas matches 0 if score !finale proto matches ..395 run scoreboard players operation !finale proto += !finale offer1
execute if score !finale auto_finalitas matches 0 if score !finale proto matches 397.. run scoreboard players set !finale proto 396
execute if score !finale auto_finalitas matches 0 if score !finale proto matches 396 unless score !finale fin_lock matches 1 run function inqui:gifts/begin_finale
kill @s