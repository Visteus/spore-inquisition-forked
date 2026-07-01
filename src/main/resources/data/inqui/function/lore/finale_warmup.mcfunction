#Background warm-up, run at the START of the lore sequence (lore/6) for BOTH the automatic and the
#offering-gated paths.
#
#IMPORTANT: these MUST be absolute coordinates, not "~". The arena structures are placed at fixed
#absolute coords (mountain fills x/z -100..110, y 250..630; tower3 at -30,80,-35), but this function
#is invoked from the offering item's context, whose position is somewhere in the OVERWORLD. Using
#"~-100 ~100" here (as the original did) force-loaded finalitas chunks around the player's overworld
#x/z -- the wrong chunks -- so `place template` at lore/17 still had to GENERATE the -100..110 chunks
#synchronously in one tick == the multi-second freeze. Force-loading the real footprint by absolute
#coords lets those chunks generate gradually over the ~90s lore sequence, so the later `place` only
#sets blocks into already-generated chunks.
#
#Covers chunks (-7,-7)..(7,7), i.e. blocks -112..127 in x/z, which fully contains the 210x210 mountain
#footprint anchored at -100,-100.
# say [SI-DBG] finale_warmup: force-loading finalitas arena chunks (-112..112) for background generation
execute in inqui:finalitas run forceload add -112 -112 112 112
# say [SI-DBG] finale_warmup: forceload command returned (generation now happens over following ticks)
