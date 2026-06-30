#sleep1
execute as @s as @s unless score !finale dream matches 1 run scoreboard players add @s webon 1
execute as @s at @s unless score !finale dream matches 1 run gamerule doImmediateRespawn true
execute as @s at @s unless score !finale dream matches 1 if score @s webon matches 1 run tag @s add sleep_executor
execute as @s at @s unless score !finale dream matches 1 run schedule function inqui:sleep/2 4t