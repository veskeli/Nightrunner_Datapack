# Generated with MC-Build

execute if score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..50 run data merge entity @s {CustomName:"defaultskeleton",Tags:["Nightrunner"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31}]}
execute if score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..50 run tellraw @a {"text":"defaultskeleton has been spawned","color":"green"}
execute unless score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..50 run tellraw @a {"text":"defaultskeleton has been spawned","color":"red"}
teleport @s @p