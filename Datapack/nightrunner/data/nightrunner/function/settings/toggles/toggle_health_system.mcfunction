# Generated with MC-Build

# Toggle the health system
scoreboard players set #ifelse nightrunner.internal 0
execute if score $Nightrunner Nightrunner_UseHealthSystem matches 1 run function nightrunner:settings/toggles/generated/2
execute if score #ifelse nightrunner.internal matches 0 run function nightrunner:settings/toggles/generated/3