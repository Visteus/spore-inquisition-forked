schedule function inqui:5min 337s
#execute as @e[type=!#spore:fungus_entities] if entity @s[y=51,dy=319] in inqui:finalitas run effect give @s spore:mycelium_ef 300 1 true
#armor buffs.
execute as @e[type=!player] if items entity @s armor.feet spore:living_boots if items entity @s armor.legs spore:living_pants if items entity @s armor.chest spore:living_chest if items entity @s armor.head spore:living_helmet run effect give @s spore:symbiosis 365 0 true
execute as @e[type=!player] if items entity @s armor.feet spore:inf_boots if items entity @s armor.legs spore:inf_pants if items entity @s armor.chest spore:inf_chest if items entity @s armor.head spore:inf_helmet run effect give @s spore:symbiosis 365 1 true
execute as @e[type=!player] if items entity @s armor.feet spore:inf_up_boots if items entity @s armor.legs spore:inf_up_pants if items entity @s armor.chest spore:inf_up_chest if items entity @s armor.head spore:inf_up_helmet run effect give @s spore:symbiosis 365 2 true
#proto vervas
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run summon spore:vigil ~ ~ ~ {Variant:0}
execute as @e[type=spore:proto,tag=!proto_nai,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 150 false @e[type=spore:vigil, distance=..200]
#finalitas shenanigans
execute if score !finale finalitas matches 1 as @a at @s unless dimension inqui:finalitas in inqui:finalitas run tp @s ~ 0 ~
#apostle
execute as @e[tag=apostle] run effect give @s minecraft:jump_boost 30 2 true
#f red
bossbar add inqui:rednight "struggle"
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] at @p run summon spore:inf_player ~ ~25 ~-75 {Tags:["inf_pla_boss"],DeathLootTable:"inqui:entities/red_fixer",Silent:1b,PersistenceRequired:1b,CustomName:'{"text":"FIXER","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_up_boots",Count:1b},{id:"spore:inf_up_pants",Count:1b},{id:"spore:inf_up_chest",Count:1b},{id:"spore:inf_up_helmet",Count:1b}],HandItems:[{id:"spore:cleaver",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
bossbar set inqui:rednight max 600
bossbar set inqui:rednight color red
bossbar set inqui:rednight name {"text":"REDNIGHT","color":"#a60000","bold":true}
bossbar set inqui:rednight visible false
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] run bossbar set inqui:rednight players @a
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] run bossbar set inqui:rednight visible true
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] run damage @s 0 minecraft:out_of_world by @p
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] at @a run playsound inqui:antinihility master @a ~ ~ ~ 1 1 1
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=1}] run tellraw @p [{"text":"No, I do not wish to change. I do not want to forget it all. Please, let’s just stay.","color":"#ff0000"}]
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=2}] run tellraw @p [{"text":"I do not understand. What more must you sacrifice? Just what are you trying to achieve?","color":"#ff0000"}]
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=3}] run tellraw @p [{"text":"Please do not steal away the last glimmer of what I treasure.","color":"#ff0000"}]
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=4}] run tellraw @p [{"text":"I just wish to stay with you, everyone, and all that we have left in this eternal moment.","color":"#ff0000"}]
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=5}] run tellraw @p [{"text":"Why are you trying to let us slip away?","color":"#ff0000"}]
execute as @e[type=spore:proto,tag=nunny] at @s if entity @p[distance=..600] if entity @e[type=spore:mound,nbt={age:10},scores={rednight=6}] run tellraw @p [{"text":"Do we truly need to change?","color":"#ff0000"}]
execute as @p at @s if entity @e[distance=..600,type=spore:proto,tag=nunny] run playsound spore:broken_screams hostile @s ~ ~ ~ 1 0.1 1