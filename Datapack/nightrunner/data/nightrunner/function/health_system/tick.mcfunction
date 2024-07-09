# Generated with MC-Build

# TODO: Dont use tick and use schedule instead
# Check if the revive system is enabled
execute if score $Nightrunner Nightrunner_UseReviveSystem matches 0 run return 1
# Check if the player is dead
execute as @a[scores={Nightrunner_Death=..1}] run function nightrunner:health_system/death_screen