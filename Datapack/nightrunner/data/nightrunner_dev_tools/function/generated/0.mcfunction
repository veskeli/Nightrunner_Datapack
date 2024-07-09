# Generated with MC-Build

# Reset mob count
scoreboard players set $NightRunner_MobCount_zombie Nightrunner_MobCount 0
# Get mob count
execute as @e[type=zombie] run scoreboard players add $NightRunner_MobCount_zombie Nightrunner_MobCount 1
# if more the 100 mobs are alive, don't summon
execute if score $NightRunner_MobCount_zombie Nightrunner_MobCount matches 100.. run return run function nightrunner_dev_tools:generated/1
execute as @s run summon minecraft:zombie ^ ^ ^3