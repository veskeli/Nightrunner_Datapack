# Generated with MC-Build

# set the player as not dead
scoreboard players reset @s Nightrunner_CurrentlyDead
# Set player to survival
gamemode survival @s
# Show title with revive message
title @s title [{"text":"You have been revived","color":"green"}]
# Kill graves
execute store result storage nightrunner:grave owner.id int 1 run scoreboard players get @s Nightrunner_ID
function nightrunner:health_system/kill_player_graves with storage nightrunner:grave owner