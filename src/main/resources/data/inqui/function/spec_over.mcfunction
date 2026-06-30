item replace entity @e[type= spore:inf_player, limit=1, sort=nearest ] armor.head with spore:inf_helmet
item replace entity @e[type= spore:inf_player, limit=1, sort=nearest ] armor.chest with spore:inf_up_chest
item replace entity @e[type= spore:inf_player, limit=1, sort=nearest ] armor.legs with spore:inf_pants
item replace entity @e[type= spore:inf_player, limit=1, sort=nearest ] armor.feet with spore:inf_boots
item replace entity @e[type= spore:inf_player, limit=1, sort=nearest] weapon.mainhand with spore:cleaver
item replace entity @e[type= spore:inf_player, limit=1, sort=nearest] weapon.offhand with spore:infected_crossbow
execute as @e[type= spore:inf_player, limit=1, sort=nearest] at @s run effect give @s spore:symbiosis infinite 2 true
