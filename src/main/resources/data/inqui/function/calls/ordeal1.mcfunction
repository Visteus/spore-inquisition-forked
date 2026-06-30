execute as @s at @s unless score !finale no_ordeal matches 1 run schedule function inqui:calls/ordeal1_2 300s append
execute as @s at @s unless score !finale no_ordeal matches 1 run playsound minecraft:block.bell.resonate neutral @p ~ ~ ~ 5 0.9 1
execute as @s at @s unless score !finale no_ordeal matches 1 run tag @s add ordeal_runner
execute as @p at @s unless score !finale no_ordeal matches 1 run tellraw @p {"text":"Our choice could be hope or despair as the sun comes.","color":"#730000"}