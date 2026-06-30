#Offering-triggered start of Finalitas (only used when automatic finalitas is disabled).
#Guard against re-triggering while the lore sequence is already playing.
scoreboard players set !finale fin_lock 1
#Warm up the finalitas dimension now so it is ready by the time the lore chain teleports players in.
function inqui:lore/finale_setup
#Play the lore sequence (~90s); it ends at lore/17, which performs the actual teleport.
function inqui:lore/6
