# Generated with MC-Build

schedule function nightrunner:items/tools/pearl_wand/pearl_wand_cooldown 0.1s replace
# Reduce cooldown
execute as @e[type=marker,tag=pearl_wand_marker,scores={Nightrunner_PearlWandMarkerTimer=1..}] run scoreboard players remove @s Nightrunner_PearlWandMarkerTimer 1
# Remove the marker if the timer is 0
execute as @e[type=marker,tag=pearl_wand_marker,scores={Nightrunner_PearlWandMarkerTimer=..0}] run function nightrunner:items/tools/pearl_wand/generated/4