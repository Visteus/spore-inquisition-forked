#Nunny (the Rednight's proto form) upkeep + boss health bar.
#Only invoked from inqui:tick when a nunny-tagged entity exists.
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] run effect clear @a spore:symbiosis
execute store result bossbar inqui:rednight value run data get entity @e[tag=nunny,limit=1] Health
