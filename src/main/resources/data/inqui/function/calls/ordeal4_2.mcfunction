#place template inqui:mini ~-2 ~ ~-2
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run playsound spore:inquisitor_ambient hostile @p ~ ~ ~ 5 0.1 1
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run advancement grant @p only inqui:a_4
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run title @p subtitle {"text":"Helix of the End","color":"#ff0000","bold":false}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run title @p title {"text":"MIDNIGHT","color":"#ff0000","bold":true}
execute as @e[tag=ordeal_runner,limit=1] at @s run place structure inqui:tower ~ ~ ~
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr1 run summon spore:inf_player ~ ~25 ~-75 {Tags:["inf_pla_boss"],DeathLootTable:"inqui:entities/red_fixer",Silent:1b,PersistenceRequired:1b,CustomName:'{"text":"FIXER","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_up_boots",Count:1b},{id:"spore:inf_up_pants",Count:1b},{id:"spore:inf_up_chest",Count:1b},{id:"spore:inf_up_helmet",Count:1b}],HandItems:[{id:"spore:cleaver",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr2 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr2 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr2 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr3 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr3 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr3 run summon spore:howit_arm ~ ~-10 ~ {PersistenceRequired:1b}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 if score !finale proto >= !finale ord_thr4 run summon spore:inf_player ~ ~15 ~-75 {Tags:["inf_pla_boss"],DeathLootTable:"inqui:entities/red_fixer",Silent:1b,PersistenceRequired:1b,CustomName:'{"text":"FIXER","color":"red"}',CustomNameVisible:0b,ArmorItems:[{id:"spore:inf_up_boots",Count:1b},{id:"spore:inf_up_pants",Count:1b},{id:"spore:inf_up_chest",Count:1b},{id:"spore:inf_up_helmet",Count:1b}],HandItems:[{id:"spore:cleaver",Count:1b},{id:"spore:vigil_eye",Count:1b}]}
execute as @e[tag=ordeal_runner,limit=1] at @p unless score !finale no_ordeal matches 1 run spreadplayers ~ ~ 30 125 false @e[type=spore:howit_arm, distance=..15]
execute as @e[tag=ordeal_runner,limit=1] at @s run tag @s remove ordeal_runner
schedule function inqui:calls/tail 2s