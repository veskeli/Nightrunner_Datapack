# Generated with MC-Build

scoreboard players set #ifelse nightrunner.internal 1
scoreboard players set $Nightrunner Nightrunner_UseHealthSystem 0
# Reset health to 20
execute as @a run attribute @s minecraft:generic.max_health base set 20
# open settings again
function nightrunner:settings/settings