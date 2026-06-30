#1
stopsound @a music
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 5 0.5 1
title @a title {"text":"Free...","color":"#ff0000","bold":false}
schedule function inqui:lore/7 8s