#Warm up the finalitas dimension ahead of the teleport: force-load the arena chunks and place the
#large structures early so the transition doesn't lag/crash. Safe to run more than once (forceload
#is idempotent and place template just overwrites).
execute in inqui:finalitas run forceload add ~-100 ~-100 ~100 ~100
execute in inqui:finalitas run place template inqui:tower3 -30 80 -35
execute in inqui:finalitas run place template inqui:mountain -100 250 -100
