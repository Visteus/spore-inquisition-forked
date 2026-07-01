#Offering-triggered start of Finalitas (only used when automatic finalitas is disabled).
#Guard against re-triggering while the lore sequence is already playing.
# say [SI-DBG] begin_finale: offering accepted, starting finale (forceload happens in lore/6)
scoreboard players set !finale fin_lock 1
#Play the lore sequence (~90s). lore/6 force-loads the finalitas dimension so it warms up in the
#background while the narrative plays, and lore/17 places the arena + teleports players at the end.
function inqui:lore/6
