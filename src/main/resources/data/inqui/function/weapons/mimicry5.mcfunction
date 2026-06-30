#kill
execute as @s at @s run summon minecraft:vex ~ ~-1 ~ {Team:"peace", HandItems:[{id:"minecraft:iron_axe",count:1}], LifeTicks:6000}
execute as @s at @s run playsound minecraft:block.sculk_catalyst.bloom neutral @s ~ ~ ~ 2 1 1
execute as @s at @s run particle minecraft:soul ~ ~1 ~ 1 1 1 0.1 50 normal
advancement revoke @s only inqui:w_m5