#rage rage rage
scoreboard players remove @s rage 1
execute as @s if score @s rage matches ..0 run scoreboard players set @s rage 0
execute as @s if score @s rage matches 3000.. run scoreboard players set @s rage 2999
execute as @s if score @s rage matches 1000.. run effect give @s minecraft:strength 1 2 true
execute as @s if score @s rage matches 1000.. run effect give @s minecraft:haste 1 2 true
execute as @s if score @s rage matches 1000.. run effect give @s minecraft:speed 1 2 true
execute as @s if score @s rage matches 1000.. run effect give @s minecraft:resistance 1 0 true
execute as @s at @s if score @s rage matches 1000.. run particle spore:blood_particle ~ ~ ~ 0.75 1 0.75 0 2 normal
execute as @s at @s if score @s rage matches 1000.. run playsound spore:engine neutral @s ~ ~ ~ 0.05 0.1 1
advancement revoke @s only inqui:w_m11