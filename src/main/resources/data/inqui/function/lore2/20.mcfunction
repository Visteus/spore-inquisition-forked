#2
stopsound @a music
execute as @a at @s in minecraft:overworld run tp ~ ~ ~
execute as @a at @s run spreadplayers ~ ~ 100 5 true @a
execute as @a at @s run spawnpoint
execute as @e[type=spore:mound,nbt={age:10}] at @s run kill @s
scoreboard players set !finale proto 0
advancement grant @a only inqui:ending
schedule function inqui:lore2/21 2s