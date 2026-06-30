#Keep mounds afloat in bile/water. Only invoked from inqui:tick when a mound exists.
execute as @e[type=spore:mound] at @s if block ~ ~ ~ spore:bile run data merge entity @s {Motion:[0.0,0.05,0.0]}
execute as @e[type=spore:mound] at @s if block ~ ~ ~ minecraft:water run data merge entity @s {Motion:[0.0,0.05,0.0]}
