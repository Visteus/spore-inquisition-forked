#basic infected spawn3
schedule function inqui:age4_2 1500s

execute as @e[type=spore:mound,nbt={age:4, max_age:4}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}
execute as @e[type=spore:mound,nbt={age:4, max_age:4}, limit=4, sort=random] at @s unless entity @e[ type= spore:proto , distance= ..215 ] run place template inqui:brain ~-2 ~-1 ~-2
execute as @e[type=spore:mound,nbt={age:10}] at @s run fill ~-4 ~ ~-4 ~4 ~4 ~4 minecraft:air
execute as @e[type=spore:mound,nbt={age:10}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ spore:hive_spawn
execute as @e[type=spore:mound,nbt={age:10}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}
kill @e[type=spore:mound, nbt={age:4, max_age:4}]
#proto mound
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:gastgaber ~ ~ ~
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 225 false @e[type=spore:gastgaber, distance=..20]