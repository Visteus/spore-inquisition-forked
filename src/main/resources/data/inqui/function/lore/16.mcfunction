#1
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
title @a title {"text":"Answer my call.","color":"#ff0000","bold":false}
tp @e[type=!player,nbt=!{age:10}] ~ ~-2000 ~
schedule function inqui:lore/17 8s