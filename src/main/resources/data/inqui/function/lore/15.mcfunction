#1
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
time set midnight
gamerule doMobSpawning false
title @a title {"text":"Now...","color":"#ff0000","bold":false}
tp @e[type=!player,nbt=!{age:10}] ~ ~-2000 ~
schedule function inqui:lore/16 8s