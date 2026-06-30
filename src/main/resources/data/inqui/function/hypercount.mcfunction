#basic hyper hunger, the mobs that it affects are stored in the hyper.json file in tags entity types
schedule function inqui:hypercount 1s
execute as @e[type=#inqui:hyper] run scoreboard objectives add hypercount dummy "basic hyper count"
execute as @e[type=#inqui:hyper] unless score @s hypercount matches 0.. run scoreboard players set @s hypercount 2700
execute as @e[tag=overcharged_evolved] run scoreboard objectives add hypercount dummy "basic hyper count"
execute as @e[tag=overcharged_evolved] unless score @s hypercount matches 0.. run scoreboard players set @s hypercount 2700
#hyper count
execute as @e[scores={hypercount=1..}] run scoreboard players remove @s hypercount 1
execute as @e[scores={hypercount=0}] run effect give @s minecraft:wither 600 1
execute as @e[scores={hypercount=0}] run scoreboard players set @s hypercount 2760