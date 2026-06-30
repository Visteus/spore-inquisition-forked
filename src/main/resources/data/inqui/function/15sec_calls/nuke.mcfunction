summon spore:flesh_bomb ~ ~ ~ {damage:200, explosion:50, bomb_type:1}
summon spore:nuke ~ ~-50 ~ {init_range:20 ,range:12 ,init_duration:0 ,duration:600,damage:10f}
scoreboard players remove !finale proto 5
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}}] at @s run playsound spore:nuke neutral @a ~ ~ ~ 30 0.1 0
kill @s