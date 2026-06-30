#1
execute as @a at @s in inqui:finalitas run tp @s ~10000 0 ~-10000
playsound spore:sonar ambient @a ~ ~ ~ 5 0.5 1
gamerule doMobSpawning true
scoreboard players set !finale finalitas 1
#capullin
execute in inqui:finalitas run forceload add ~-100 ~-100 ~100 ~100
execute in inqui:finalitas run place template inqui:tower3 -30 80 -35
execute in inqui:finalitas run place template inqui:mountain -100 250 -100
execute as @a at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 spore:brain_remnants hollow
execute as @a at @s run spawnpoint @s ~ ~ ~