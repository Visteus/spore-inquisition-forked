#evolution hunger, the mobs that it affects are stored in the evolved.json file in tags entity types
schedule function inqui:evolcount 1s
execute as @e[type=#inqui:evolved] run scoreboard objectives add evolcount dummy "basic evolution count"
execute as @e[type=#inqui:evolved] unless score @s evolcount matches 0.. run scoreboard players set @s evolcount 900
execute as @e[tag=overcharged_evolved, type=#inqui:evolved] run scoreboard players set @s evolcount 900
#evolved count
execute as @e[scores={evolcount=1..}] run scoreboard players remove @s evolcount 1
execute as @e[scores={evolcount=0}] run effect give @s spore:starvation 600 1
execute as @e[scores={evolcount=0}] run scoreboard players set @s evolcount 960