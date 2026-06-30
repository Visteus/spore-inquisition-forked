execute as @e[tag=ordeal_runner,limit=1] at @p run playsound spore:delusioner_casting hostile @p ~ ~ ~ 5 0.1 1
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p subtitle {"text":"The Process of Understanding","color":"#960000","bold":false}
execute as @e[tag=ordeal_runner,limit=1] at @p run title @p title {"text":"NOON","color":"#960000","bold":true}
execute as @e[tag=ordeal_runner,limit=1] at @p run advancement grant @p only inqui:a_2
execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:biobloob ~ ~-10 ~ {scale:1.0}
execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:biobloob ~ ~-10 ~ {scale:1.0}
execute as @e[tag=ordeal_runner,limit=1] at @p run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 70.. run summon spore:biobloob ~ ~-10 ~ {scale:1.0}
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 70.. run summon spore:biobloob ~ ~-10 ~ {scale:1.0}
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 140.. run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 140.. run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 210.. run summon spore:vigil ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 210.. run summon spore:reconstructor ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p if score !finale proto matches 280.. run summon spore:arena_tendril ~ ~-10 ~
execute as @e[tag=ordeal_runner,limit=1] at @p run effect give @e[type=spore:biobloob, distance=..15] minecraft:slowness 10 1 true
execute as @e[tag=ordeal_runner,limit=1] at @p run effect give @e[type=spore:biobloob, distance=..15] minecraft:weakness 10 0 true
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=#inqui:organoids, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @p run spreadplayers ~ ~ 25 100 false @e[type=spore:biobloob, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @s run tag @s remove ordeal_runner