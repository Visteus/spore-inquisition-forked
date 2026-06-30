#basic infected spawn3
schedule function inqui:age1_2 900s

execute as @e[type=spore:mound,nbt={age:1, max_age:1}] at @s run summon spore:inf_human ~ ~ ~ {PersistenceRequired:1b, evo_points:1}
execute as @e[type=spore:mound,nbt={age:10}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}
execute as @e[type=spore:mound,nbt={age:1, max_age:1}] run kill @s
#proto mound
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:gastgaber ~ ~ ~
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 225 false @e[type=spore:gastgaber, distance=..20]