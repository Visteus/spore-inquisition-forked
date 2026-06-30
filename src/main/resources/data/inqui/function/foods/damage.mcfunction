#foods
advancement revoke @s only inqui:d_1
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=1}] run tellraw @p [{"text":"Stop trying to deny my only purpose.","color":"#660000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=2}] run tellraw @p [{"text":"For the sake of not crumbling in oneself, i shall persist.","color":"#660000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=3}] run tellraw @p [{"text":"You can't undo what has already begun.","color":"#660000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=4}] run tellraw @p [{"text":"I'm sorry","color":"#660000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=5}] run tellraw @p [{"text":"When the red sun rise up, everything will come together in a blissfull dream.","color":"#660000"}]
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10},scores={rednight=6}] run tellraw @p [{"text":"I will save your life from destruction and raise you from the end of the world. Belive in me.","color":"#660000"}]
execute as @e[type=spore:mound,nbt={age:10},scores={rednight=1..}] run scoreboard players remove @s rednight 1
execute as @p at @s if entity @e[distance=..40,type=spore:mound,nbt={age:10}] run playsound minecraft:entity.allay.death hostile @s ~ ~ ~ 1 0.1 1
execute as @e[type=spore:mound,nbt={age:10}] at @s run summon spore:arena_tendril