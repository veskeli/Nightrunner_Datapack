# Generated with MC-Build

# if player is not in survival mode then return
execute as @s[nbt={playerGameType:1}] run return run function nightrunner:health_system/generated/0
# Set player respawn location to the death location
execute at @s run spawnpoint @s ~ ~ ~
# Set the player as dead
scoreboard players set @s Nightrunner_CurrentlyDead 1
# Set player to spectator
gamemode spectator @s
# Show title with death message
title @s title [{"text":"You died","color":"red"}]