#Rednight (age:10 mound) judgment counter + second-coming raids.
#Only invoked from inqui:tick when the rednight mound actually exists.
execute as @e[type= spore:mound, limit=1,nbt={age:10}] if score !finale proto matches 275.. run scoreboard players add @s judment 1
execute as @e[type= spore:mound, limit=1,nbt={age:10}] if score !finale proto matches -999..-101 run scoreboard players add @s judment 1
execute as @e[type= spore:mound, limit=1,nbt={age:10},scores={judment=..0}] run scoreboard players set @s judment 0
execute as @e[type= spore:mound, limit=1,nbt={age:10},scores={judment=864001..}] run scoreboard players set @s judment 0
#we are going to beat you to death/ second coming raids -- gated by the raids toggle (raids==1 disables)
execute unless score !finale raids matches 1 as @a[limit=3] at @s if entity @e[type=spore:mound,limit=1,nbt={age:10},scores={judment=864000..}] run function inqui:calls/cal_raid
execute unless score !finale raids matches 1 as @a[limit=1] at @s if entity @e[type=spore:mound,limit=1,nbt={age:10},scores={judment=860000}] run tellraw @a {"text":"We will erase all that divides and distinguishes, as the dark sun rises...","color":"#ff0000"}
