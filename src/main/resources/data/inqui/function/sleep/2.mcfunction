#sleep2
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 in inqui:dream run tp ~ ~ ~
execute as @p[tag=sleep_executor,limit=1] at @s if score @s webon matches 1 run spreadplayers ~ ~ 100 20000 false @p
execute as @p[tag=sleep_executor,limit=1] at @s run schedule function inqui:sleep/3 4t