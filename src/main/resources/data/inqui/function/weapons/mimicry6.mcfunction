#kill
execute as @s at @s run particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0.2 10 force
execute as @s at @s run effect give @s minecraft:hunger 10 14 true
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] spore:starvation 5 4 true
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] minecraft:slowness 5 1
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] minecraft:blindness 5 1
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] minecraft:mining_fatigue 5 1
execute as @s at @s run effect give @e[ type= #spore:fungus_entities, distance= ..64] minecraft:weakness 5 1
execute as @s at @s run advancement revoke @s only inqui:w_m6