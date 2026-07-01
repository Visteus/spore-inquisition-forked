#1
#Start warming up the finalitas dimension the moment the finale begins, so its chunks are generated
#in the background during the ~90s lore sequence (avoids a synchronous generation freeze at lore/17).
function inqui:lore/finale_warmup
stopsound @a music
tp @e[type=#spore:fungus_entities,nbt=!{age:10}] ~ ~-2000 ~
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 5 0.5 1
title @a title {"text":"Free...","color":"#ff0000","bold":false}
schedule function inqui:lore/7 8s