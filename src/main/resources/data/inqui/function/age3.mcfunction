#basic infected spawn2
schedule function inqui:age3 600s
execute as @e[type=spore:mound,nbt={age:3}] at @s run summon spore:inf_human ~ ~ ~ {PersistenceRequired:1b}
