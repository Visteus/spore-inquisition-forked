#kill
execute as @s run effect give @s minecraft:saturation 3 0 true
execute as @s run effect give @s minecraft:resistance 10 1 true
execute as @s run effect give @s minecraft:regeneration 5 0 true
execute as @s at @s run playsound minecraft:entity.generic.eat neutral @s ~ ~ ~ 3 0.75 1
advancement revoke @s only inqui:w_m4