#Proto countdown timers, mound-cleaner death order, and ordeal triggers.
#Only invoked from inqui:tick when at least one spore:proto exists.
execute as @e[type=spore:proto,scores={proto_scamp_raid=1..}] run scoreboard players remove @s proto_scamp_raid 1
execute as @e[type=spore:proto,scores={proto_random_number=1..}] run scoreboard players remove @s proto_random_number 1
#1 death order
execute as @e[type=spore:proto,scores={proto_scamp_raid=783999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=683999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=583959, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=483999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=383999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=283999, F_F=1}] at @s run function inqui:calls/mound_cleaner
execute as @e[type=spore:proto,scores={proto_scamp_raid=183999, F_F=1}] at @s run function inqui:calls/mound_cleaner
#ordeals (DAWN / NOON / DUSK / MIDNIGHT)
execute as @e[type=spore:proto,scores={proto_scamp_raid=864000, F_F=1}] at @s run function inqui:calls/ordeal1
execute as @e[type=spore:proto,scores={proto_scamp_raid=648000, F_F=1}] at @s run function inqui:calls/ordeal2
execute as @e[type=spore:proto,scores={proto_scamp_raid=432000, F_F=1}] at @s run function inqui:calls/ordeal3
execute as @e[type=spore:proto,scores={proto_scamp_raid=214000, F_F=1}] at @s run function inqui:calls/ordeal4
#proto timer reset and extra number for f.f when cycle repeats
execute as @e[type=spore:proto,scores={proto_scamp_raid=183998}] run scoreboard players add @s F_F 1
