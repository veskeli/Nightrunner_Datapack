# Generated with MC-Build

tag @s remove spawned
scoreboard players add @s Nightrunner_BoulderWandMarkerTimer 20
execute if entity @s[tag=boulder_wand_marker_0] run scoreboard players add @s Nightrunner_BoulderWandMarkerTimer 20
execute if entity @s[tag=boulder_wand_marker_1] run scoreboard players add @s Nightrunner_BoulderWandMarkerTimer 15
execute if entity @s[tag=boulder_wand_marker_2] run scoreboard players add @s Nightrunner_BoulderWandMarkerTimer 10
execute if entity @s[tag=boulder_wand_marker_3] run scoreboard players add @s Nightrunner_BoulderWandMarkerTimer 5
execute at @s run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 1
fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:air