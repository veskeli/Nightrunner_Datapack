# Generated with MC-Build

# if player is in spectator mode then teleport to grave and set to survival
execute as @s[nbt={playerGameType:3}] run return run function nightrunner:health_system/revive
say @s Revived