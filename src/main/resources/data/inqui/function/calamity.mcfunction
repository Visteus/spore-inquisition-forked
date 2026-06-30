#calamitys spawns mound sometimes
schedule function inqui:calamity 1200s
execute as @e[type=#inqui:calamity] at @s run summon spore:mound ~ ~ ~ {age:1,max_age:4}
#overcharged version
#execute as @e[tag=overcharged_calamity] at @s run summon spore:arena_tendril
