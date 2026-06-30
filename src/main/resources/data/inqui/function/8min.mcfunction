schedule function inqui:8min 600s
#red strong
execute as @e[type=spore:proto,tag=nunny] as @s run effect give @e[ type= spore:proto ] minecraft:health_boost infinite 124 true
#proto vervas
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:braiomil ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:braiomil ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:braiomil ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:knight ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:knight ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:knight ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:griefer ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:griefer ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:griefer ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:busser ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:busser ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:busser ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:scavenger ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:scavenger ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:scavenger ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:jagd ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:jagd ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:jagd ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:thorn ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:thorn ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:thorn ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:stalker ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:stalker ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:stalker ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:protector ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:protector ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:protector ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:nuclea ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:nuclea ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:nuclea ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:brute ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:brute ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:brute ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:inebriater ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:inebriater ~ ~ ~ {PersistenceRequired:1b}
execute as @e[type=spore:proto,scores={F_F=1}] at @s run summon spore:inebriater ~ ~ ~ {PersistenceRequired:1b}


execute as @e[type=spore:proto,scores={F_F=1}] at @s run effect give @e[ type= #inqui:evolved , distance=..5 ] minecraft:slowness 20 2 true
execute as @e[type=spore:proto,scores={F_F=1}] at @s run effect give @e[ type= #inqui:evolved , distance=..5 ] minecraft:weakness 20 2 true
execute as @e[type=spore:proto,scores={F_F=1}] at @s run spreadplayers ~ ~ 10 200 false @e[type= #inqui:evolved, distance=..20]