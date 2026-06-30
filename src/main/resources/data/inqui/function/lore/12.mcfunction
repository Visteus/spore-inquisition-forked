#1
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 5 0.5 1
title @a title {"text":"Fear and even time.","color":"#ff0000","bold":false}
schedule function inqui:lore/13 8s