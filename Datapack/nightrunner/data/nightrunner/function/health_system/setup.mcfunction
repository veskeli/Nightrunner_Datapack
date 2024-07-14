# Generated with MC-Build

schedule function nightrunner:health_system/setup 1s replace
# TODO: Dont use clock and use schedule instead
# Check if the health system is enabled
execute if score $Nightrunner Nightrunner_UseHealthSystem matches 0 run return 1
# Set the player max health if score is null
execute as @a unless score @s Nightrunner_Health matches ..0 run function nightrunner:health_system/setup_health