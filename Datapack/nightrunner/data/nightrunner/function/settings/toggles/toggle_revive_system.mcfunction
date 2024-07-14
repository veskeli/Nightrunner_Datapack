# Generated with MC-Build

# Toggle the revive system
scoreboard players set #ifelse nightrunner.internal 0
execute if score $Nightrunner Nightrunner_UseReviveSystem matches 1 run function nightrunner:settings/toggles/generated/0
execute if score #ifelse nightrunner.internal matches 0 run function nightrunner:settings/toggles/generated/1