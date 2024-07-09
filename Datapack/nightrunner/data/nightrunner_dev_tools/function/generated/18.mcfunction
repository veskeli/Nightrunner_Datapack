# Generated with MC-Build

# Reset mob count
scoreboard players set $NightRunner_MobCount_stray Nightrunner_MobCount 0
# Get mob count
execute as @e[type=stray] run scoreboard players add $NightRunner_MobCount_stray Nightrunner_MobCount 1
# if more the 100 mobs are alive, don't summon
execute if score $NightRunner_MobCount_stray Nightrunner_MobCount matches 100.. run return run function nightrunner_dev_tools:generated/19
execute as @s run summon minecraft:stray ^ ^ ^3