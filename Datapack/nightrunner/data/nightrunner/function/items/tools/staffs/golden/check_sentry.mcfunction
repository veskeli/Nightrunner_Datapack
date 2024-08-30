# Generated with MC-Build

execute as @e[type=block_display,tag=sentry,tag=Golden] run function nightrunner:items/tools/staffs/golden/check_sentry/check_current_sentry
execute as @e[type=block_display,tag=sentry,tag=Golden] run scoreboard players reset @s Nightrunner_CurrentConcurrentAttacks
# Loop
schedule function nightrunner:items/tools/staffs/golden/check_sentry 20t replace