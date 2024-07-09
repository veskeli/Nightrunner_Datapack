# Generated with MC-Build

# Allow the player to open the settings if they are op
execute as @a[scores={Nightrunner_Op=1}] run scoreboard players enable @s Open_Nightrunner_Settings
# Check if the player ran the settings command
execute as @a[scores={Open_Nightrunner_Settings=1}] run function nightrunner:settings/open_settings