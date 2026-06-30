execute as @s at @p run title @p subtitle {"text":"The Path of Belief","color":"#ff0000","bold":false}
execute as @s at @p run title @p title {"text":"ECLIPSE","color":"#ff0000","bold":true}
execute as @s at @p run advancement grant @p only inqui:a_5
playsound spore:sonar ambient @s ~ ~ ~ 2 0.10 1
execute as @s run execute store result storage calamity:data AreaX double 1 run data get entity @s Pos[0]
execute as @s run execute store result storage calamity:data AreaY double 1 run data get entity @s Pos[1]
execute as @s run execute store result storage calamity:data AreaZ double 1 run data get entity @s Pos[2]
execute as @s at @s run summon spore:gazenbreacher ~150 ~ ~ {Tags:["overcharged_calamity"]}
execute as @s at @s positioned ~150 ~ ~ run forceload add ~ ~
execute as @s run data modify entity @e[type=spore:gazenbreacher,limit=1,sort=nearest] AreaX set from storage calamity:data AreaX
execute as @s run data modify entity @e[type=spore:gazenbreacher,limit=1,sort=nearest] AreaY set from storage calamity:data AreaY
execute as @s run data modify entity @e[type=spore:gazenbreacher,limit=1,sort=nearest] AreaZ set from storage calamity:data AreaZ
execute as @s at @s run summon spore:hindenburg ~-150 ~ ~ {Tags:["overcharged_calamity"]}
execute as @s at @s positioned ~-150 ~ ~ run forceload add ~ ~
execute as @s run data modify entity @e[type=spore:hindenburg,limit=1,sort=nearest] AreaX set from storage calamity:data AreaX
execute as @s run data modify entity @e[type=spore:hindenburg,limit=1,sort=nearest] AreaY set from storage calamity:data AreaY
execute as @s run data modify entity @e[type=spore:hindenburg,limit=1,sort=nearest] AreaZ set from storage calamity:data AreaZ
execute as @s at @s run summon spore:sieger ~ ~ ~-150 {Tags:["overcharged_calamity"]}
execute as @s at @s positioned ~ ~ ~-150 run forceload add ~ ~
execute as @s run data modify entity @e[type=spore:sieger,limit=1,sort=nearest] AreaX set from storage calamity:data AreaX
execute as @s run data modify entity @e[type=spore:sieger,limit=1,sort=nearest] AreaY set from storage calamity:data AreaY
execute as @s run data modify entity @e[type=spore:sieger,limit=1,sort=nearest] AreaZ set from storage calamity:data AreaZ