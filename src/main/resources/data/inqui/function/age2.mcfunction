#basic infected spawn1
schedule function inqui:age2 700s
execute as @e[type=spore:mound,nbt={age:2}] at @s run summon spore:inf_human ~ ~ ~ {PersistenceRequired:1b}