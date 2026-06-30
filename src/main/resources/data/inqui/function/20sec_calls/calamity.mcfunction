attribute @s spore:ballistic base set 32
attribute @s spore:localization base set 6
attribute @s spore:grinding base set 6
attribute @s spore:corrosives base set 6
attribute @s spore:laceration base set 6
attribute @s spore:rejuvenation base set 3

effect give @s minecraft:resistance 30 1 true
effect give @s minecraft:speed 30 0 true
data merge entity @s {mutation:1}
data merge entity @s[type=spore:sieger] {adaptation:900}
data merge entity @s[type=spore:gazenbreacher] {adaptation:900}
data merge entity @s[type=spore:hindenburg] {adaptation:900}
data merge entity @s[type=spore:howitzer] {ores:100}
data merge entity @s[type=spore:hohlfresser] {adaptation:1b}
data merge entity @s[type=spore:kraken] {wood:20}