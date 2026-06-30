#Per-tick driver. Heavy per-entity blocks are gated behind a single cheap existence check and moved
#into inqui:tick/* sub-functions, so when the relevant entities are absent we do one short-circuiting
#`if entity` test instead of a dozen full selector scans. Order and behavior are otherwise unchanged.

#rednight (age:10 mound) judgment + second-coming raids -- only when the rednight mound exists
execute if entity @e[type=spore:mound,nbt={age:10},limit=1] run function inqui:tick/rednight

#proto timers, mound-cleaner death order, ordeal triggers -- only when a proto exists
execute if entity @e[type=spore:proto,limit=1] run function inqui:tick/proto_timers

#rednight idle reset
execute as @e[type=spore:mound,nbt={age:10},scores={rednight=0}] run scoreboard players set @s rednight 6

#Finale: when the infection has ended, sink stray organoids
execute if score !finale finalitas matches -1 as @e[type=#inqui:organoids] at @s run tp @s ~ ~-100 ~

#nunny (rednight proto) upkeep + boss bar -- only when it exists
execute if entity @e[tag=nunny,limit=1] run function inqui:tick/nunny

#mound buoyancy in bile/water -- only when a mound exists
execute if entity @e[type=spore:mound,limit=1] run function inqui:tick/mound_float

#finalitas portal effects (only while in the finalitas dimension and the boss is gone)
execute if score !finale finalitas matches 1 unless entity @e[type=spore:proto,tag=nunny] in inqui:finalitas run particle minecraft:portal 5 618 0 0.5 0 0.5 1 5 force
execute if score !finale finalitas matches 1 unless entity @e[type=spore:proto,tag=nunny] in inqui:finalitas run fill 9 618 -4 0 622 5 air
