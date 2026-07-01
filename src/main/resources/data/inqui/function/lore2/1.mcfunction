#1
stopsound @a
bossbar set inqui:rednight visible false
effect clear @a
kill @e[type=spore:inf_player]
scoreboard players set !finale finalitas -1
#Finale over: release the arena chunks that finale_warmup force-loaded, so ~225 chunks of the
#finalitas dimension aren't kept loaded (and ticking) for the rest of the session.
execute in inqui:finalitas run forceload remove all
execute as @a at @s in inqui:finalitas run tp @s ~200 480 ~
tellraw @a [{"text":"Ah... So I couldn’t do it...","color":"#ff0000"}]
execute as @a at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:bedrock hollow
stopsound @a music
schedule function inqui:lore2/2 10s