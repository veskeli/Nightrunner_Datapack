# Generated with MC-Build

#=================================================
# Scoreboards
#=================================================
# Use Health system
scoreboard objectives add Nightrunner_UseHealthSystem dummy
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
# Health
scoreboard objectives add Nightrunner_Health health
# Health max
scoreboard objectives add Nightrunner_MaxHealth dummy
# Current absorption amount
scoreboard objectives add Nightrunner_Absorption dummy
# Check | Current Absorption Amount
scoreboard objectives add Nightrunner_CheckCurrentAbsorptionAmount dummy
# Grave id
scoreboard objectives add Nightrunner_GraveID dummy
# Attempt revive
scoreboard objectives add Nightrunner_AttemptRevive dummy
#=================================================
# Load the health system
#=================================================
# Set immediate respawn gamerule
gamerule doImmediateRespawn false
#=================================================
# Check scoreboard settings
#=================================================
execute unless score $Nightrunner Nightrunner_UseReviveSystem matches ..99999 run scoreboard players set $Nightrunner Nightrunner_UseReviveSystem 1
execute unless score $Nightrunner Nightrunner_UseHealthSystem matches ..99999 run scoreboard players set $Nightrunner Nightrunner_UseHealthSystem 1