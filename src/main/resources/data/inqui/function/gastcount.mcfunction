#count for gastgabers death timer
schedule function inqui:gastcount 1s
execute as @e[type=spore:gastgaber] run scoreboard objectives add gastcounter dummy "gast count"
execute as @e[type=spore:gastgaber] unless score @s gastcounter matches 0.. run scoreboard players set @s gastcounter 1800
#gast count
execute as @e[type=spore:gastgaber,scores={gastcounter=1..}] run scoreboard players remove @s gastcounter 1
execute as @e[type=spore:gastgaber,scores={gastcounter=0}] run effect give @s minecraft:wither 3600 4 true
execute as @e[type=spore:gastgaber,scores={gastcounter=1400}] at @s run fill ~ ~ ~ ~ ~ ~ spore:biomass_lump
execute as @e[type=spore:gastgaber,scores={gastcounter=1000}] at @s run fill ~ ~ ~ ~ ~ ~ spore:biomass_lump
execute as @e[type=spore:gastgaber,scores={gastcounter=600}] at @s run fill ~ ~ ~ ~ ~ ~ spore:biomass_lump
execute as @e[type=spore:gastgaber,scores={gastcounter=1}] at @s run summon spore:mound ~ ~ ~ {age:1,max_age:4}