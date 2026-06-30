schedule function inqui:20min 1200s
#proto vervas


execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:inquisitor ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:inquisitor ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:brot ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:brot ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:wendigo ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:wendigo ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:ogre ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:ogre ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:hollen ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:hollen ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:vanguard ~ ~ ~ {PersistenceRequired:1b}


execute as @e[type=spore:proto,scores={F_F=1}] at @s run effect give @e[ type= #inqui:hyper , distance=..5 ] minecraft:slowness 20 2 true
execute as @e[type=spore:proto,scores={F_F=1}] at @s run effect give @e[ type= #inqui:hyper , distance=..5 ] minecraft:weakness 20 2 true
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 5 200 false @e[type= #inqui:hyper, distance=..20]