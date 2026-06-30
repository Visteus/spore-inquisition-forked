#Bring the players into the (already warmed-up) finalitas dimension and start the final fight.
execute as @a at @s in inqui:finalitas run tp @s ~10000 0 ~-10000
playsound spore:sonar ambient @a ~ ~ ~ 5 0.5 1
gamerule doMobSpawning true
scoreboard players set !finale finalitas 1
execute as @a at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 spore:brain_remnants hollow
execute as @a at @s run spawnpoint @s ~ ~ ~
#release the offering-triggered finale guard now that we've entered
scoreboard players set !finale fin_lock 0
