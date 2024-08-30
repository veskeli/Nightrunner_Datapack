# Generated with MC-Build

execute as @e[type=block_display,tag=sentry,tag=Damage] run function nightrunner:items/tools/staffs/wooden/check_sentry/check_current_sentry
execute as @e[type=block_display,tag=sentry,tag=Damage] run scoreboard players reset @s Nightrunner_CurrentConcurrentAttacks
# Loop
schedule function nightrunner:items/tools/staffs/wooden/check_sentry 20t replace