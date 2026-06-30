#basic infected spawn3
schedule function inqui:age2_2 1000s

execute as @e[type=spore:mound,nbt={age:2, max_age:2}] at @s run summon spore:inf_human ~ ~ ~ {PersistenceRequired:1b, evo_points:6}
execute as @e[type=spore:mound,nbt={age:2, max_age:2}] run kill @s
#mound/scamper Proto spread
execute as @e[type=spore:proto,scores={F_F=..1}] at @s run spreadplayers ~ ~ 5 200 false @e[type=spore:mound, nbt=!{age:10}, distance=..210]
execute as @e[type=spore:proto,scores={F_F=..1}] at @s run spreadplayers ~ ~ 5 200 false @e[type=spore:scamper, distance=..210]
#proto mound
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:gastgaber ~ ~ ~
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 225 false @e[type=spore:gastgaber, distance=..20]
#ouuuuuuuuuuu story of undertaleee
schedule function inqui:calls/undertale 60s