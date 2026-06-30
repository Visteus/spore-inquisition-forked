execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:arena_tendril ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:reaper ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr1 run summon spore:vanguard ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr1 run summon spore:arena_tendril ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr2 run summon spore:hivetumor ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr3 run summon spore:specter ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr3 run summon spore:arena_tendril ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto >= !finale ord_thr4 run summon spore:hivetumor ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p run playsound spore:womb_ambient hostile @p ~ ~ ~ 5 0.1 1
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p subtitle {"text":"Where We Must Reach","color":"#cf0000","bold":false}
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p title {"text":"DUSK","color":"#cf0000","bold":true}
execute as @e[tag=ordeal_runner,limit=1] at @p run advancement grant @p only inqui:a_3
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=#inqui:organoids, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=spore:specter, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=spore:vanguard, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=spore:reaper, distance=..15]

execute as @e[tag=ordeal_runner,limit=1] at @s run tag @s remove ordeal_runner