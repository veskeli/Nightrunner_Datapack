# Generated with MC-Build

# Store a random value
execute store result score @s nightrunner.internal run random value 1..100
# Set the skeleton data based on the random value
execute if score @s[tag=!Nightrunner] nightrunner.internal matches ..100 run data merge entity @s {CustomName:'"test"',Tags:["Nightrunner"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31}]}