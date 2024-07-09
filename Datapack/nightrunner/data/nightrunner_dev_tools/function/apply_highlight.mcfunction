# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner_dev_tools:used_highlight
# mob count for the highlight tool
scoreboard players set $NightRunner_MobCount_highlight Nightrunner_MobCount 0
# Add +1 to $NightRunner_MobCount for each mob with the glowing effect
execute as @e run scoreboard players add $NightRunner_MobCount_highlight Nightrunner_MobCount 1
# Show amount in player action bar
title @s actionbar [{"text":"Highlighted "},{"score":{"name":"$NightRunner_MobCount_highlight","objective":"Nightrunner_MobCount"}},{"text":" mobs"}]
# Give glowing effect to all mobs
effect give @e minecraft:glowing 2 0 true