witherstormmod ultimateTarget set @w @e[type=spore:proto,limit=1, sort=nearest]
execute as @e[type=witherstormmod:wither_storm] at @s run effect give @e[distance=..10] minecraft:wither 30 4 true
execute as @e[type=witherstormmod:wither_storm] at @s run effect give @e[distance=..50] witherstormmod:wither_sickness infinite 0 true
