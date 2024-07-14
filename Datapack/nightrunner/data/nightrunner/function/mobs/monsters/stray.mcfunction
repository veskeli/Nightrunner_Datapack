# Generated with MC-Build

# Store a random value
# execute store result score @s Nightrunner_MobDefiner run random value 1..100
execute store result score @e[type=stray,tag=!Nightrunner,limit=1] Nightrunner_MobDefiner run random value 1..100
execute as @e[type=stray,tag=!Nightrunner,limit=1] run function nightrunner:mobs/monsters/data/stray
# execute as @e[type=stray,tag=!Nightrunner,limit=1] run block data/stray{
# Store a random value
# execute store result score @s nightrunner.internal run random value 1..100
# Set the skeleton data based on the random value
# execute if score @s[tag=!Nightrunner] nightrunner.internal matches ..100 run data merge entity @s {CustomName:'"test"',Tags:["Nightrunner"],CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31}]}
# }