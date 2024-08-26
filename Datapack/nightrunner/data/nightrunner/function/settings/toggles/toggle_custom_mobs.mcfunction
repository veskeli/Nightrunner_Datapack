# Generated with MC-Build

# Toggle the custom mobs
scoreboard players set #ifelse nightrunner.internal 0
execute if score $Nightrunner Nightrunner_CustomMobsEnabled matches 1 run function nightrunner:settings/toggles/generated/4
execute if score #ifelse nightrunner.internal matches 0 run function nightrunner:settings/toggles/generated/5