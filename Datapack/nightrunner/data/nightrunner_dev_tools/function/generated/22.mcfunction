# Generated with MC-Build

# Reset mob count
scoreboard players set $NightRunner_MobCount_iron_golem Nightrunner_MobCount 0
# Get mob count
execute as @e[type=iron_golem] run scoreboard players add $NightRunner_MobCount_iron_golem Nightrunner_MobCount 1
# if more the 100 mobs are alive, don't summon
execute if score $NightRunner_MobCount_iron_golem Nightrunner_MobCount matches 100.. run return run function nightrunner_dev_tools:generated/23
execute as @s run summon minecraft:iron_golem ^ ^ ^3