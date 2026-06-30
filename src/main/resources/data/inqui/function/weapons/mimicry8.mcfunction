#kill
execute as @s at @s run particle spore:spore_particle ~ ~1 ~ 0 0 0 2 5 normal
execute as @s at @s run effect give @s minecraft:hunger 5 9 true
kill @e[type=spore:acid,distance=..6]
kill @e[type=spore:acid_ball,distance=..6]
kill @e[type=spore:bile,distance=..6]
kill @e[type=spore:bile_bullet,distance=..6]
kill @e[type=minecraft:arrow,distance=..6]
kill @e[type=spore:drowned_flesh_bomb,distance=..6]
kill @e[type=spore:fallen_acid_bulb,distance=..6]
kill @e[type=spore:flesh_bomb,distance=..6]
kill @e[type=spore:gore_bullet,distance=..6]
kill @e[type=spore:harpoon,distance=..6]
kill @e[type=spore:nuke,distance=..6]
kill @e[type=spore:spit,distance=..6]
kill @e[type=spore:stinger,distance=..6]
kill @e[type=spore:thrown_block,distance=..6]
kill @e[type=spore:thrown_tumor,distance=..6]
kill @e[type=spore:tumoroid_nuke,distance=..6]
kill @e[type=spore:scent,distance=..6]
kill @e[type=spore:vomit_ball,distance=..6]
















execute as @s at @s run advancement revoke @s only inqui:w_m8