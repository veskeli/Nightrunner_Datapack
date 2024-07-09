# Generated with MC-Build

schedule function nightrunner:settings/join_check 1s replace
# Check if player doesn't have a profile
execute as @a run execute unless score @s Nightrunner_Joined matches 1 run function nightrunner:settings/join_setup