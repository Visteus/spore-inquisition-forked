
#basic infected spawn3
schedule function inqui:age4 400s
execute as @e[type=spore:mound,nbt={age:4}] at @s run summon spore:inf_human ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:inf_player, tag=inf_pla_boss] run data modify entity @s DeathLootTable set value "inqui:entities/red_fixer"
#proto dies
execute as @e[type=spore:proto,tag=!nunny] at @s if score !finale finalitas matches 1 run tp @s ~ ~-2000 ~
execute as @e[type=spore:mound,nbt=!{age:10}] at @s if score !finale finalitas matches 1 run tp @s ~ ~-2000 ~
#nunny no death
execute as @e[type=spore:proto,tag=nunny] run scoreboard players set @s F_F 1
