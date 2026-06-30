#/place template inqui:tower3 ~ ~-35 ~
#/place template inqui:mountain ~-50 ~150 ~-40
#mega startup and reset
execute as @e[type= spore:mound, limit=1,nbt={age:10}] run scoreboard objectives add judment dummy "weak"
execute as @e[type= spore:mound, limit=1,nbt={age:10}] if score !finale proto matches 275.. run scoreboard players add @s judment 1
execute as @e[type= spore:mound, limit=1,nbt={age:10}] if score !finale proto matches -999..-101 run scoreboard players add @s judment 1
execute as @e[type= spore:mound, limit=1,nbt={age:10},scores={judment=..0}] run scoreboard players set @s judment 0
execute as @e[type= spore:mound, limit=1,nbt={age:10},scores={judment=864001..}] run scoreboard players set @s judment 0
#we are going to beat you to death/ second coming raids
execute as @a[limit=3] at @s if entity @e[type=spore:mound,limit=1,nbt={age:10},scores={judment=864000..}] run function inqui:calls/cal_raid
execute as @a[limit=1] at @s if entity @e[type=spore:mound,limit=1,nbt={age:10},scores={judment=860000}] run tellraw @a {"text":"We will erase all that divides and distinguishes, as the dark sun rises...","color":"#ff0000"}
#Proto Timers shits
execute as @e[type=spore:proto,scores={proto_scamp_raid=1..}] run scoreboard players remove @s proto_scamp_raid 1
execute as @e[type=spore:proto,scores={proto_random_number=1..}] run scoreboard players remove @s proto_random_number 1
#spread mounds/scampers/gastgabers around the proto (also kills mounds and spawns scampers/gastgabers XD)
#execute as @e[type= spore:mound] at @s if entity @e[type=spore:proto,scores={proto_scamp_raid=883999}, distance= ..150] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 spore:organite replace spore:overgrown_spawner
#1 death order
execute as @e[type=spore:proto,scores={proto_scamp_raid=783999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=683999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=583959, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=483999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=383999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=283999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=183999, F_F=1}] at @s run function inqui:calls/mound_cleaner
#specterss "doubt"
#first specter
execute as @e[type=spore:proto,scores={proto_scamp_raid=864000, F_F=1}] at @s run function inqui:calls/ordeal1
# ordeals, raid 2. 648000 "The Process of Understanding"
execute as @e[type=spore:proto,scores={proto_scamp_raid=648000, F_F=1}] at @s run function inqui:calls/ordeal2
# nais, raid 3 "cf0000" "A DONDE HEMOS DE LLEGAR" 432000
execute as @e[type=spore:proto,scores={proto_scamp_raid=432000, F_F=1}] at @s run function inqui:calls/ordeal3
# calamity, raid 4 "ff0000" "ULTIMO HELICE" 216000
execute as @e[type=spore:proto,scores={proto_scamp_raid=214000, F_F=1}] at @s run function inqui:calls/ordeal4
#FF shit
#/execute as @e[type=spore:proto] run tag @s add nunny
#/execute as @e[type=spore:proto] run data merge entity @s {CustomName:'{"text":"Nunny"}',CustomNameVisible:0b}
#/execute as @e[type=spore:proto,tag=nunny] run data merge entity @s {biomass:1000}
#proto timer reset and extra number for f.f when cycle repeats
execute as @e[type=spore:proto,scores={proto_scamp_raid=183998}] run scoreboard players add @s F_F 1
execute as @e[type=spore:mound,nbt={age:10},scores={rednight=0}] run scoreboard players set @s rednight 6
#V2
#execute as @e[tag=inf_pla_boss,nbt={FallFlying:1b}] at @s run tp @s ~ ~ ~ facing entity @p eyes
#Finale
execute if score !finale finalitas matches -1 as @e[type=#inqui:organoids] at @s run tp @s ~ ~-100 ~
#fuckkk
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] run effect clear @a spore:symbiosis
execute store result bossbar inqui:rednight value run data get entity @e[tag=nunny,limit=1] Health
#no broken mobs
#mounsd up
execute as @e[type=spore:mound] at @s if block ~ ~ ~ spore:bile run data merge entity @s {Motion:[0.0,0.05,0.0]}
execute as @e[type=spore:mound] at @s if block ~ ~ ~ minecraft:water run data merge entity @s {Motion:[0.0,0.05,0.0]}
#effects for the endfill 9 618 -4 0 622 5 air
execute if score !finale finalitas matches 1 unless entity @e[type=spore:proto,tag=nunny] in inqui:finalitas run particle minecraft:portal 5 618 0 0.5 0 0.5 1 5 force
execute if score !finale finalitas matches 1 unless entity @e[type=spore:proto,tag=nunny] in inqui:finalitas run fill 9 618 -4 0 622 5 air

# NO TOXIC BUSSER TEST, this was made due to a bug in old spore versions where bussers aka phayress with his poison variant will lag the game a lot.
#execute as @e[type=spore:busser,nbt={Variant:3}] at @s[type=spore:busser,nbt={Variant:3}] run summon spore:busser ~ ~ ~ {variant:1}
#kill @e[type=spore:busser,nbt={Variant:3}] 
#execute as @e[type=spore:busser,nbt={Variant:1}] at @s[type=spore:busser,nbt={Variant:1}] run summon spore:busser ~ ~ ~ {variant:2}
#kill @e[type=spore:busser,nbt={Variant:1}]
#advanced infected spawns (unused/too much lag)
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=23000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=23000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=17000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=17000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=11000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:3},scores={moundcounter=11000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
# age 4 (same)
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=23000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=23000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=17000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=17000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=11000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=11000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=5000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:water run summon spore:inf_drowned
#execute as @e[type=spore:mound,nbt={age:4},scores={moundcounter=5000}] at @s[type=spore:mound] if block ~ ~1 ~ minecraft:air run summon spore:inf_human