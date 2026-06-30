#creates the scoreboard proto for the proto modifiers
scoreboard objectives add capullo dummy "capullin start"
scoreboard players add !capullo capullo 1
gamerule doImmediateRespawn true
kill @e[ type= spore:mound , nbt={age:5}]
execute if score !capullo capullo matches 1 run summon spore:mound ~ ~2500 ~ {active_effects:[{id:"minecraft:slow_falling",duration:999999999,show_particles:false},{id:"minecraft:regeneration",duration:999999999,amplifier:100,show_particles:false},{id:"minecraft:resistance",duration:999999999,amplifier:40,show_particles:false},{id:"minecraft:health_boost",duration:999999999,amplifier:200,show_particles:false}],age:10,max_age:10}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~15 ~2500 ~15 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:infected_bow",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~-15 ~2500 ~15 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:scythe",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~15 ~2500 ~-15 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:infected_spear",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~-15 ~2500 ~-15 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:saber",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~30 ~2500 ~ {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:saber",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~-30 ~2500 ~ {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:infected_spear",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~ ~2500 ~30 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:scythe",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute if score !capullo capullo matches 1 run summon spore:inf_player ~ ~2500 ~-30 {Tags:["apostle"],active_effects:[{id:"minecraft:slow_falling",duration:7000,show_particles:false}, {id:"minecraft:regeneration",duration:999999999,show_particles:false}, {id:"minecraft:resistance",duration:999999999,show_particles:false}, {id:"minecraft:speed",duration:999999999,show_particles:false}, {id:"minecraft:strength",duration:999999999,show_particles:false}, {id:"minecraft:jump_boost",duration:999999999,show_particles:false}],PersistenceRequired:1b,CustomName:'{"text":"APOSTLE","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_boots",Count:1b},{id:"spore:inf_pants",Count:1b},{id:"spore:inf_chest",Count:1b},{id:"spore:inf_helmet",Count:1b}],HandItems:[{id:"spore:infected_bow",Count:1b},{id:"spore:vigil_eye",Count:1b}]}

execute as @e[type=spore:mound,nbt={age:10}] run scoreboard objectives add rednight dummy "yapper"
execute as @e[type=spore:mound,nbt={age:10}] unless score @s rednight matches 0.. run scoreboard players set @s rednight 6
execute if score !capullo capullo matches 1 run schedule function inqui:calls/start1 5s
scoreboard players add !capullo capullo 1
scoreboard objectives add rage dummy
scoreboard objectives add dream dummy
scoreboard objectives add webon dummy
scoreboard objectives add no_ordeal dummy
scoreboard objectives add raids dummy
scoreboard objectives add judment dummy "weak"

#spore-inquisition config bridge objectives (seeded by the Java mod's ScoreboardSync; the defaults
#below are a fallback so the datapack still behaves if a value was never written).
scoreboard objectives add corruption_rate dummy
scoreboard objectives add auto_finalitas dummy
scoreboard objectives add fin_lock dummy
scoreboard objectives add offer1 dummy
scoreboard objectives add offer2 dummy
scoreboard objectives add offer3 dummy
scoreboard objectives add ord_thr1 dummy
scoreboard objectives add ord_thr2 dummy
scoreboard objectives add ord_thr3 dummy
scoreboard objectives add ord_thr4 dummy
execute unless score !finale corruption_rate = !finale corruption_rate run scoreboard players set !finale corruption_rate 1
execute unless score !finale auto_finalitas = !finale auto_finalitas run scoreboard players set !finale auto_finalitas 1
execute unless score !finale fin_lock = !finale fin_lock run scoreboard players set !finale fin_lock 0
execute unless score !finale offer1 = !finale offer1 run scoreboard players set !finale offer1 25
execute unless score !finale offer2 = !finale offer2 run scoreboard players set !finale offer2 50
execute unless score !finale offer3 = !finale offer3 run scoreboard players set !finale offer3 100
execute unless score !finale ord_thr1 = !finale ord_thr1 run scoreboard players set !finale ord_thr1 70
execute unless score !finale ord_thr2 = !finale ord_thr2 run scoreboard players set !finale ord_thr2 140
execute unless score !finale ord_thr3 = !finale ord_thr3 run scoreboard players set !finale ord_thr3 210
execute unless score !finale ord_thr4 = !finale ord_thr4 run scoreboard players set !finale ord_thr4 280

#V2
scoreboard objectives add inf_pla_boss dummy "final raid thing"
# 1728000 and 3456000