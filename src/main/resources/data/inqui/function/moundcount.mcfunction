#mound death timer
schedule function inqui:moundcount 1s
execute as @e[type=spore:mound] run scoreboard objectives add moundcounter dummy "mound death counter"
execute as @e[type=spore:mound] unless score @s moundcounter matches 0.. run scoreboard players set @s moundcounter 50000