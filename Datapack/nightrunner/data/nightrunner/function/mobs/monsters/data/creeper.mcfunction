# Generated with MC-Build

# Store a random value
execute store result score @s nightrunner.internal run random value 1..100
# Set the skeleton data based on the random value
execute if score @s[tag=!Nightrunner] nightrunner.internal matches ..5 run data merge entity @s {CustomName:'"Nuke"',Tags:["Nightrunner"],ExplosionRadius:15b,Fuse:45,attributes:[{id:"minecraft:generic.movement_speed",base:0.20},{id:"minecraft:generic.max_health", base:30},{id:"minecraft:generic.scale",base:1.25}]}
execute if score @s[tag=!Nightrunner] nightrunner.internal matches ..15 run data merge entity @s {CustomName:'"Lite"',Tags:["Nightrunner"],ExplosionRadius:2b,Fuse:15,attributes:[{id:"minecraft:generic.movement_speed",base:0.3},{id:"minecraft:generic.max_health", base:10},{id:"minecraft:generic.scale",base:0.75}]}
execute if score @s[tag=!Nightrunner] nightrunner.internal matches ..100 run data merge entity @s {CustomName:'"Normi"',Tags:["Nightrunner"],ExplosionRadius:5b,Fuse:30,attributes:[{id:"minecraft:generic.movement_speed",base:0.25},{id:"minecraft:generic.max_health", base:20},{id:"minecraft:generic.scale",base:1}]}