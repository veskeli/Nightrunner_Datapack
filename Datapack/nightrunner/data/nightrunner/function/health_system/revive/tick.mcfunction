# Generated with MC-Build

# Give op the ability to revive themselves and others
execute as @a[scores={Nightrunner_Op=1}] run scoreboard players enable @s Nightrunner_Revive
execute as @a[scores={Nightrunner_Op=1}] run scoreboard players enable @s Nightrunner_ReviveAll
# Check if the player ran the revive command
execute as @a[scores={Nightrunner_Revive=1}] run function nightrunner:health_system/revive/trigger_revive
# Check if the player ran the revive all command
execute as @a[scores={Nightrunner_ReviveAll=1}] run function nightrunner:health_system/revive/trigger_revive_all