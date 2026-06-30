#1
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 5 0.5 1
title @a title {"text":"Power and status.","color":"#ff0000","bold":false}
schedule function inqui:lore/12 8s