execute as @s at @s run schedule function inqui:calls/ordeal4_2 300s append
execute as @s at @s unless score !finale no_ordeal matches 1 run playsound minecraft:block.bell.resonate neutral @p ~ ~ ~ 5 0.5 1
execute as @s at @s run tag @s add ordeal_runner
execute as @p at @s unless score !finale no_ordeal matches 1 run tellraw @p {"text":"The night has come. Our ignorance as its origin. No one shall be redeemed at its end.","color":"#ff0000"}