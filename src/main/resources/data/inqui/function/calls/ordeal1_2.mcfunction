execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 70.. run summon spore:vigil ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 140.. run summon spore:vigil ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 210.. run summon spore:vigil ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 280.. run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 75 false @e[type=#inqui:organoids, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 75 false @e[type=spore:howit_arm, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run playsound spore:vigil_ambient hostile @p ~ ~ ~ 5 0.1 1
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p subtitle {"text":"The Doubt","color":"#730000","bold":false}
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p title {"text":"DAWN","color":"#730000","bold":true}
execute as @e[tag=ordeal_runner,limit=1] at @p run advancement grant @p only inqui:a_1
execute as @e[tag=ordeal_runner,limit=1] at @s run tag @s remove ordeal_runner
schedule function inqui:calls/tail 2s