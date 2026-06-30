#count of proto/mound with random spawn numbers

schedule function inqui:proto_count3 60s
#protos
execute as @e[type=spore:proto] run scoreboard objectives add proto_random_number dummy "proto number thing scoreboard"
execute as @e[type=spore:proto] unless score @s proto_random_number matches 0.. run scoreboard players set @s proto_random_number 32

#wither storm shit
execute as @e[type=spore:proto] run function inqui:wsp