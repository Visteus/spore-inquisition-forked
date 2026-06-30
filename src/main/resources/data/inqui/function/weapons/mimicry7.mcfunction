#kill
execute as @s at @s run particle spore:acid_particle ~ ~ ~ 0 1 0 5 400 normal
execute as @s at @s run effect give @e[ type= !minecraft:player, distance= ..16] spore:corrosion 10 9
execute as @s at @s run effect give @e[ type= !minecraft:player, distance= ..16] minecraft:poison 10 2
execute as @s at @s run advancement revoke @s only inqui:w_m7