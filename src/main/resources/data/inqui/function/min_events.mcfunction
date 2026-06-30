#misc events that happend every min
schedule function inqui:min_events 61s
#apostle shit
execute as @e[tag=apostle] run data merge entity @s {evolution:0}
execute as @e[tag=apostle] run data merge entity @s {kills:1}
#execute as @a at @s if dimension minecraft:the_nether run tp @s 0 100 0
execute as @e[type=!#spore:fungus_entities] at @s if biome ~ ~ ~ inqui:wastes run effect give @s spore:mycelium_ef 65 0
execute as @e[type=!#spore:fungus_entities] at @s if biome ~ ~ ~ inqui:wastes run effect give @s spore:uneasy 120 0 true
execute as @e[type=!#spore:fungus_entities] at @s if biome ~ ~ ~ inqui:wastes run effect give @s spore:marker 65 0

#Claws 
#Rednight
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=1}] run tellraw @p [{"text":"To live is a process full of pain.","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=2}] run tellraw @p [{"text":"We will understand life and the soul with our own hands.","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=3}] run tellraw @p [{"text":"We will walk together to see a new dawn, shall you join us?","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=4}] run tellraw @p [{"text":"Once our flesh becomes absolute and everlasting, we may finally understand","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=5}] run tellraw @p [{"text":"To gain an understanding of what is incomprehensible, we dream, staring.","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=6}] run tellraw @p [{"text":"What we will find in the end?","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10}] run playsound minecraft:entity.allay.ambient_without_item hostile @s ~ ~ ~ 1 0.1 1
execute as @e[type=spore:mound,nbt={age:10},scores={rednight=1..}] run scoreboard players remove @s rednight 1
execute as @e[type=spore:mound,nbt={age:10}] at @s if entity @p[distance=..40] run summon spore:arena_tendril ~ ~ ~
#Fixer
execute as @e[type=spore:inf_player, tag=inf_pla_boss] at @s run summon spore:arena_tendril ~ ~60 ~
#rednight name
execute as @e[type=spore:mound,nbt={age:10}] run data merge entity @s {CustomName:'{"text":"RedNight","color":"red"}',CustomNameVisible:0b}
# bedrock block placing
execute as @e[type=#spore:fungus_entities, nbt=!{age:10}] at @s if block ~ ~-1 ~ minecraft:bedrock run function inqui:5sec_calls/bedrock
#v2 rednifunction inqui:defense
execute as @e[type=spore:proto,tag=nunny] at @s if entity @e[distance=..200, type= spore:hivetumor] run effect give @s minecraft:regeneration 60 255 true
#hclaw