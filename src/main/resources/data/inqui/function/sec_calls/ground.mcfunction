execute as @s at @s if block ~ ~-3 ~ air run data merge entity @s {FallFlying:1b}
item replace entity @s weapon.mainhand with spore:rapier
item replace entity @s weapon.offhand with spore:shield
effect give @s minecraft:resistance 2 2 true