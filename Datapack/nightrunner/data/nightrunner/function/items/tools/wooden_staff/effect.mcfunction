# Generated with MC-Build

execute if score $NightrunnerCooldown Nightrunner_EffectCooldown matches 1.. run scoreboard players remove $NightrunnerCooldown Nightrunner_EffectCooldown 1
execute if score $NightrunnerCooldown Nightrunner_EffectCooldown matches 1.. run return 1
particle minecraft:wax_on ~ ~ ~ 0 0 0 0.02 1 force
scoreboard players add $NightrunnerCooldown Nightrunner_EffectCooldown 8