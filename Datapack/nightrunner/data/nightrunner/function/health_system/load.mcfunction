# Generated with MC-Build

#=================================================
# Scoreboards
#=================================================
# Use Revive system
scoreboard objectives add Nightrunner_UseReviveSystem dummy
# Total Death count
scoreboard objectives add Nightrunner_DeathCount deathCount
# This is used to check if player died (And gets reset every time the player dies)
scoreboard objectives add Nightrunner_Death deathCount
# Is player dead
scoreboard objectives add Nightrunner_CurrentlyDead dummy
# Op Revive me trigger
scoreboard objectives add Nightrunner_Revive trigger
# Op Revive all trigger
scoreboard objectives add Nightrunner_ReviveAll trigger
#=================================================
# Load the health system
#=================================================
# Set immediate respawn gamerule
gamerule doImmediateRespawn false
#=================================================
# Check scoreboard settings
#=================================================
execute unless score $Nightrunner Nightrunner_UseReviveSystem matches 9999.. run scoreboard players set $Nightrunner Nightrunner_UseReviveSystem 1