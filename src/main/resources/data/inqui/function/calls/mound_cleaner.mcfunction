execute as @s at @s run kill @e[ type= spore:mound , nbt=!{age:10},distance= ..200]
execute as @s at @s run kill @e[ type= spore:scamper]
execute as @s at @s run summon spore:gastgaber ~ ~ ~
execute as @s at @s run summon spore:sieger_tail ~ ~ ~ {PersistenceRequired:1b}
execute as @s at @s run spreadplayers ~ ~ 5 200 false @e[type=spore:sieger_tail, distance=..200]
schedule function inqui:calls/tail 2s
execute as @s at @s run spreadplayers ~ ~ 5 250 false @e[type=spore:gastgaber, distance=..20]