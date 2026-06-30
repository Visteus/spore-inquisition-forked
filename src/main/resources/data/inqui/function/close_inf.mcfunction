#shit that happends every second
schedule function inqui:close_inf 1s
#particles
execute at @e[tag=overcharged_evolved] run particle spore:blood_particle ~ ~0.5 ~ 1 1 1 0 25 normal @a
execute at @e[type=spore:mound,nbt={age:10}] run particle spore:blood_particle ~ ~0.5 ~ 5 5 5 0 150 normal @a
#mounds dont die due to blocks
execute as @e[type=spore:mound,nbt={Health:5.0f}] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
execute as @e[type=spore:mound,nbt={Health:6.0f}] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
#no despawns infecteds
execute as @e[type=#spore:fungus_entities] run data merge entity @s {PersistenceRequired:1b}
#gatgabers and scampers "RANDOMIZER"
execute as @e[type=spore:scamper] run scoreboard objectives add scamper_temp dummy "scamper randomizer"
execute as @e[type=spore:scamper,limit=1, sort=random] if score @s scamper_temp matches 2 run scoreboard players set @s scamper_temp 1
execute as @e[type=spore:scamper,limit=1, sort=random] unless score @s scamper_temp matches 0.. run scoreboard players set @s scamper_temp 2
execute as @e[type=spore:scamper] unless score @s scamper_temp matches 1 run data merge entity @s {age:100} 
# overcharged calamity conditions
scoreboard objectives add overcharged_calamity dummy "overcharged calamity thing"
execute as @e[type=#inqui:calamity,nbt={kills:255}] run tag @s add overcharged_calamity
execute as @e[type=#inqui:calamity,nbt={kills:256}] run tag @s add overcharged_calamity
execute as @e[type=#inqui:calamity,nbt={kills:257}] run tag @s add overcharged_calamity
# overcharged evolveds conditions
scoreboard objectives add overcharged_evolved dummy "overcharged evolved thing"
execute as @e[type=#inqui:evolved,nbt={evo_points:8}] run tag @s add overcharged_evolved
execute as @e[type=#inqui:evolved,nbt={evo_points:9}] run tag @s add overcharged_evolved
#FREEZE
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzMxNjVlMjU0ZGU3ODYzNDU5MzQzNTQzZjkzMzQ4MWYwZGNmOGQ0NzMwYTIzNDMzYjlhN2ZmMGQzZmY3OWM1YSJ9fX0="}]}}}}] at @s unless block ~ ~-1 ~ minecraft:air run function inqui:sec_calls/ice_bomb
#v2
execute as @e[tag=inf_pla_boss,nbt={FallFlying:0b}] at @s run function inqui:sec_calls/ground
execute as @e[tag=inf_pla_boss] run attribute @s minecraft:generic.follow_range base set 500
execute as @e[tag=inf_pla_boss,nbt={FallFlying:1b}] at @s run function inqui:sec_calls/air
#noflycheating
execute as @a[nbt={FallFlying:1b}] at @s if entity @s[y=300,dy=640] if dimension inqui:finalitas run function inqui:sec_calls/no_fly
#no shity music
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] at @a run stopsound @a music
#end
execute in inqui:finalitas at @a[x=5,y=618,z=0,distance=..1] if score !finale finalitas matches 1 unless entity @e[type=spore:proto,tag=nunny] run function inqui:lore2/1