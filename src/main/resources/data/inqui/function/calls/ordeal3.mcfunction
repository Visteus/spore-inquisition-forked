execute as @s at @s unless score !finale no_ordeal matches 1 run schedule function inqui:calls/ordeal3_2 300s append
execute as @s at @s unless score !finale no_ordeal matches 1 run playsound minecraft:block.bell.resonate neutral @p ~ ~ ~ 5 0.7 1
execute as @s at @s unless score !finale no_ordeal matches 1 run tag @s add ordeal_runner
execute as @p at @s unless score !finale no_ordeal matches 1 run tellraw @p {"text":"Stay vigilant. Stay resolved. Let our mind be strong when dusk comes over our light.","color":"#cf0000"}