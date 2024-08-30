# Generated with MC-Build

schedule function nightrunner:sentry/check_sentry_effects 10t replace
# If heal sentry
execute as @e[type=block_display,tag=sentry,tag=heal] run function nightrunner:sentry/generated/1
# if damage sentry
execute as @e[type=block_display,tag=sentry,tag=damage] run function nightrunner:sentry/generated/2