advancement revoke @s only inqui:c_gift3
effect give @p spore:symbiosis infinite 1 true
loot give @p loot inqui:entities/red_fixer
give @p spore:inf_chest[enchantments={levels:{'spore:serrated_thorns':1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:inf_helmet[enchantments={levels:{'spore:serrated_thorns':1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:inf_pants[enchantments={levels:{'spore:serrated_thorns':1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:inf_boots[enchantments={levels:{'spore:serrated_thorns':1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:greatsword[enchantments={levels:{"spore:corrosive_potency":1,"spore:gastric_spewage":1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:infected_bow[enchantments={levels:{"spore:corrosive_potency":1,"spore:gastric_spewage":1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:shield[enchantments={levels:{'spore:serrated_thorns':1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]
give @p spore:mistmaker[enchantments={levels:{"spore:corrosive_potency":1,"spore:gastric_spewage":1,'spore:voracious_maw':1,'spore:symbiotic_reconstitution':1,'spore:unwavering_nature':1}}]

execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:sieger
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:gazenbreacher
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:hindenburg
execute as @e[type=spore:mound,limit=1,nbt={age:10}] at @s run summon spore:howitzer
tellraw @p {"text":"RedNight accepts your offering.","color":"#ff0000"}
scoreboard players add !finale proto 100
kill @s