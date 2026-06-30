#basic infected spawn3
schedule function inqui:age3_2 990s
execute as @p run function inqui:calls/maid_removal
execute as @e[type=spore:mound,nbt={age:3, max_age:3}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}

execute as @e[type=spore:mound,nbt={age:10}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}

execute as @e[type=spore:mound,nbt={age:4, max_age:4}] at @s run summon spore:scamper ~ ~ ~ {PersistenceRequired:1b,active_effects:[{id:"minecraft:slow_falling",duration:9999999,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:true}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:water_breathing",duration:999999999,show_particles:false}]}
#proto biome expansion
execute as @e[type=spore:proto,scores={F_F=1}] at @s run fillbiome ~-250 ~-150 ~-250 ~250 ~150 ~250 inqui:wastes
execute as @e[type=spore:proto,scores={F_F=1}] at @s run fillbiome ~-250 ~-125 ~-250 ~250 ~125 ~250 inqui:wastes
execute as @e[type=spore:proto,scores={F_F=1}] at @s run fillbiome ~-250 ~-100 ~-250 ~250 ~100 ~250 inqui:wastes
execute as @e[type=spore:proto,scores={F_F=1}] at @s run fillbiome ~-250 ~-75 ~-250 ~250 ~75 ~250 inqui:wastes
execute as @e[type=spore:proto,scores={F_F=1}] at @s run fillbiome ~-250 ~-50 ~-250 ~250 ~50 ~250 inqui:wastes
kill @e[type=spore:mound, nbt={age:3, max_age:3}]
#proto mound
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:gastgaber ~ ~ ~
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 225 false @e[type=spore:gastgaber, distance=..20]