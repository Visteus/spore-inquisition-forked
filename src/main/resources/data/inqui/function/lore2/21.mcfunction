#2
stopsound @a music
scoreboard objectives add credits_inqui dummy
playsound inqui:remember master @a ~ ~ ~ 1 1 1
effect clear @a
schedule function inqui:lore2/22 2s
scoreboard players add !finale credits_inqui 12000