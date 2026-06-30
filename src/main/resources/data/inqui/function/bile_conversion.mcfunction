#comandos que pasan cada 5 segundos
schedule function inqui:bile_conversion 5s
#fuck chunkloading muhahahaahaha
execute in inqui:finalitas run forceload add 5 0
#crusting with gastgaber
execute as @e[type= spore:gastgaber] at @s run fill ~-25 ~-1 ~-25 ~25 ~-1 ~25 spore:crusted_bile replace minecraft:water
execute as @e[type= spore:gastgaber] at @s run fill ~-25 ~ ~-25 ~25 ~ ~25 spore:crusted_bile replace minecraft:water


#nuke timer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}}] run scoreboard objectives add nuke dummy "nule timer"
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}}] unless score @s nuke matches 0.. run scoreboard players set @s nuke 12
#ice nuke timer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiNWY2OWUxOTAxMDE5NGExOWNhZjE4NDM3YzdjYTcxMjIxZTQxM2FhMDg5ZWFmYTQ3YjliZGQ5Zjk5ZGQ4NSJ9fX0="}]}}}}] run scoreboard objectives add ice_nuke dummy "freeze timer"
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiNWY2OWUxOTAxMDE5NGExOWNhZjE4NDM3YzdjYTcxMjIxZTQxM2FhMDg5ZWFmYTQ3YjliZGQ5Zjk5ZGQ4NSJ9fX0="}]}}}}] unless score @s ice_nuke matches 0.. run scoreboard players set @s ice_nuke 12
#nuke
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}},scores={nuke=1..}] at @s run playsound spore:scanner_item neutral @a[distance= ..150] ~ ~ ~ 5 0.1 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}},scores={nuke=1..}] run scoreboard players remove @s nuke 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YwYTI5ZDk0YTdjYTUxODcwYWQ5ZTA3YTJkZTFmZmIwNjYyZmQ4ZDhjOTk1N2MwNGI0ZmFiYWU1NjNjMGM0OCJ9fX0="}]}}}},scores={nuke=0}] at @s run function inqui:15sec_calls/nuke
#nuke2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiNWY2OWUxOTAxMDE5NGExOWNhZjE4NDM3YzdjYTcxMjIxZTQxM2FhMDg5ZWFmYTQ3YjliZGQ5Zjk5ZGQ4NSJ9fX0="}]}}}},scores={ice_nuke=1..}] at @s run playsound minecraft:entity.warden.heartbeat neutral @a[distance= ..200] ~ ~ ~ 5 0.1 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiNWY2OWUxOTAxMDE5NGExOWNhZjE4NDM3YzdjYTcxMjIxZTQxM2FhMDg5ZWFmYTQ3YjliZGQ5Zjk5ZGQ4NSJ9fX0="}]}}}},scores={ice_nuke=1..}] run scoreboard players remove @s ice_nuke 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiNWY2OWUxOTAxMDE5NGExOWNhZjE4NDM3YzdjYTcxMjIxZTQxM2FhMDg5ZWFmYTQ3YjliZGQ5Zjk5ZGQ4NSJ9fX0="}]}}}},scores={ice_nuke=0}] at @s run function inqui:15sec_calls/nuke2
#flesh offerings
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA1NWE2Yjg1OTFjNDZjMTljODkwMDIwYjNkMmFhZWY3NjQ3OTUxM2Y4NjgwMmFlZWRjMDY0YzVkYzI3MWJlIn19fQ=="}]}}}}] at @s if block ~ ~-1 ~ #spore:biomass_to_membrane run function inqui:gifts/gift1_2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU2ODkzMzdjZDY2YWQyOWE2MzJhNGNiMDVlZWE0MmVjOGExNDA2YzJkMTAyODQ0NzlkYTA2OTZhOWIyYjlhMSJ9fX0="}]}}}}] at @s if block ~ ~-1 ~ #spore:biomass_to_membrane run function inqui:gifts/gift2_2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY4N2QwNWYwZDU5M2FkMTUzYmJkZmVlOWQ2ZjdhNDZiY2RmZjQwMWYzNTFkNDRiZDVkNDM0ZDA4OTE3MTM2In19fQ=="}]}}}}] at @s if block ~ ~-1 ~ #spore:biomass_to_membrane run function inqui:gifts/gift3_2

#anti ice reag
execute as @a run clear @s spore:cryogenic_reagent 1
#effects for no creeepers, o man:
#V2
execute as @e[tag=inf_pla_boss] at @p if entity @p[distance=..40] run spore:set_area
execute as @e[tag=inf_pla_boss] run data merge entity @s {evolution:0}
execute as @e[tag=inf_pla_boss] run data merge entity @s {kills:30}
execute as @e[tag=inf_pla_boss] at @s run damage @s 0 minecraft:out_of_world by @p
#Final
execute as @a at @s if score !finale finalitas matches -1 run function inqui:5sec_calls/final
execute as @a if score !finale finalitas matches -1 run function inqui:5sec_calls/win
#mimicry
#end
#vex return
execute as @e[type=vex,team=peace] at @s if entity @p[distance= 15..] positioned as @p run tp ~ ~-1 ~