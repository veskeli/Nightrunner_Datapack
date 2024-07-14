# Generated with MC-Build

# Set the skeleton data based on the random value
execute if score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..100 run data merge entity @s {CustomName:'"test"',Tags:["Nightrunner"],CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31}],HurtTime:0s}