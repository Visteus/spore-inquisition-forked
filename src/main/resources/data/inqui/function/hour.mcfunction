#scoreboard to count protos
schedule function inqui:hour 3600s
#messages
execute if score !finale proto matches -100..25 run tellraw @a [{"text":"You feel safe.   ","color":"#ffffff"}]
execute if score !finale proto matches 26..79 run tellraw @a [{"text":"You feel a little bit uneasy, something seems to be wrong, but you can't exactly say what it could be...   ","color":"#fcdbdb"}]
execute if score !finale proto matches 80..159 run tellraw @a [{"text":"The air you breath seems to be somewhat different than usual...   ","color":"#f8adad"}]
execute if score !finale proto matches 160..239 run tellraw @a [{"text":"You are able to smell a strange meat scent wherever you go. It's disgusting...   ","color":"#ff7e7e"}]
execute if score !finale proto matches 240..319 run tellraw @a [{"text":"You hear a prayer echoing from afar; they are yearning to fuse their flesh together... You recognize some of the voices.   ","color":"#ff4545"}]
execute if score !finale proto matches 320..400 run tellraw @a [{"text":"The voices are now silent, letting you feel that something within the very essence of the world has started to break. You feel a terrible dread, but at the same time, you feel a tender warmth...   ","color":"#ff2727"}]
execute if score !finale proto matches -999..-101 run tellraw @a [{"text":"Someone's been crying all along, Their cries comes from the center of this world. ","color":"#ff0000"}]
#cordinates

execute as @e[ type= spore:proto, limit=1] at @s if score !finale proto matches -999..-101 run tellraw @a [{"text":"RedNights cordinates are: ","color":"#000000"},{"nbt":"Pos","entity":"@s"}]

#effecrs and shit
execute as @e[ type= spore:mound , nbt= {age:10}] at @s if score !finale proto matches 300..400 run place template inqui:gazen0 ~-59 ~-30 ~-50
execute if score !finale proto matches 26..319 as @a at @s run effect give @a spore:uneasy 300 0 true
execute if score !finale proto matches 80..400 as @a at @s run effect give @a spore:marker 300 0 true
execute if score !finale proto matches 159..319 as @a at @s run effect give @e spore:mycelium_ef 10 0 true
execute if score !finale proto matches 320..400 as @a at @s run effect give @e spore:mycelium_ef 120 0 true
execute if score !finale proto matches 320..400 as @a at @s run effect give @a spore:uneasy 3600 0 true
execute if score !finale proto matches 320..400 as @a at @s run effect give @a minecraft:regeneration 60 0 true
execute if score !finale proto matches 240..319 as @a at @s run effect give @a spore:madness 300 4 true
#tp to the center
tp @e[type=spore:mound,nbt={age:10}] ~ 2000 ~
#new mound spread
#/execute if score !finale finalitas matches 1 as @e[ type= #spore:fungus_entities ] unless dimension inqui:finalitas run tp @s ~ ~-3000 ~
#/kill @e[type=!player,nbt=!{age:10}]
#/fill ~-2 ~-2 ~-2 ~2 ~2 ~2 spore:brain_remnants hollow