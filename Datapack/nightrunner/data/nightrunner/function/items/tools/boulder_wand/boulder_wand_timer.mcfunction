# Generated with MC-Build

schedule function nightrunner:items/tools/boulder_wand/boulder_wand_timer 0.1s replace
# Reduce the timer
execute as @e[type=marker,tag=boulder_wand_marker,scores={Nightrunner_BoulderWandMarkerTimer=1..}] run scoreboard players remove @s Nightrunner_BoulderWandMarkerTimer 1
# Remove the marker if the timer is 0
execute as @e[type=marker,tag=boulder_wand_marker,scores={Nightrunner_BoulderWandMarkerTimer=..0}] run function nightrunner:items/tools/boulder_wand/generated/1