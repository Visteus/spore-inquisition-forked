#timer with spawns for scampers X protos
schedule function inqui:proto_count2 1s
execute as @e[type=spore:proto] run scoreboard objectives add proto_scamp_raid dummy "proto scamper thing scoreboard"
execute as @e[type=spore:proto] unless score @s proto_scamp_raid matches 0.. run scoreboard players set @s proto_scamp_raid 884000

#extra scoreboard for f.f
execute as @e[type=spore:proto] run scoreboard objectives add F_F dummy "the number"
execute as @e[type=spore:proto] unless score @s F_F matches 0.. run scoreboard players set @s F_F 1