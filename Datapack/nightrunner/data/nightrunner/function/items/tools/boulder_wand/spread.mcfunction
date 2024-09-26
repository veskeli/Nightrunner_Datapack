# Generated with MC-Build

scoreboard players set #bool Nightrunner_BoulderWandMarkerTimer 0
execute as @e[type=marker,tag=boulder_wand_marker_2,tag=!filled] at @s run function nightrunner:items/tools/boulder_wand/generated/2
execute as @e[type=marker,tag=boulder_wand_marker_1,tag=!filled] at @s run function nightrunner:items/tools/boulder_wand/generated/3
execute as @e[type=marker,tag=boulder_wand_marker_0,tag=!filled] at @s run function nightrunner:items/tools/boulder_wand/generated/4
function nightrunner:items/tools/boulder_wand/fill
execute if score #bool Nightrunner_BoulderWandMarkerTimer matches 1 run schedule function nightrunner:items/tools/boulder_wand/spread 0.3s replace