#scoreboard to count protos
schedule function inqui:proto_count1 1800s
execute run scoreboard objectives add nunny dummy "proto bussy"
execute run scoreboard objectives add proto dummy "proto number"
execute run scoreboard objectives add the_end dummy "the great finale"
execute run scoreboard objectives add finalitas dummy "ceseit"
execute if score !finale finalitas matches -1 run scoreboard objectives remove proto
#execute unless entity @e[ type= spore:proto ] run scoreboard players remove !finale proto 2
execute if score !finale proto matches ..-1200 run scoreboard players set !finale proto 0
execute as @e[type=spore:proto] run scoreboard players add !finale proto 1
execute as @e[type=spore:mound,nbt={age:10}] run scoreboard players add !finale proto 1
execute if score !finale proto matches 400.. run scoreboard players add !finale the_end 1
execute if score !finale the_end matches 1 run title @a title {"text":"The Final Bell Tolls","color":"#c90000","bold":false}
execute if score !finale the_end matches 1 run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 0.75 1
execute if score !finale the_end matches 1 run advancement grant @a only inqui:a_6
execute if score !finale the_end matches 2 run function inqui:lore/6
execute if score !finale the_end matches 2 run advancement grant @a only inqui:a_7
execute if score !finale the_end matches 2 run scoreboard players set !finale proto -999
execute if score !finale the_end matches 2 run scoreboard players set !finale the_end 0
#rednight spawn
execute unless entity @e[type=spore:mound,nbt={age:10}] unless score !finale finalitas matches -1 run summon spore:mound ~ ~500 ~ {PersistenceRequired:1b,CustomName:'{"text":"§4§kWill of the father"}',active_effects:[{id:"minecraft:slow_falling",duration:999999999,show_particles:false},{id:"minecraft:regeneration",duration:999999999,amplifier:2,show_particles:true},{id:"minecraft:resistance",duration:999999999,amplifier:2,show_particles:true}],age:1,max_age:4}
#new mound spread
#/execute if score !finale finalitas matches 1 as @e[ type= #spore:fungus_entities ] unless dimension inqui:finalitas run tp @s ~ ~-3000 ~
#/kill @e[type=!player,nbt=!{age:10}]
#/fill ~-2 ~-2 ~-2 ~2 ~2 ~2 spore:brain_remnants hollow