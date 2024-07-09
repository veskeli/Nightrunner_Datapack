# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner_dev_tools:used_kill_all
# reset mob count
scoreboard players set $NightRunner_MobCount Nightrunner_MobCount 0
# Add +1 to $NightRunner_MobCount for each mob with
execute as @e[tag=Nightrunner] run scoreboard players add $NightRunner_MobCount Nightrunner_MobCount 1
# Send message to player with the amount of mobs killed
tellraw @s [{"text":"Killed "},{"score":{"name":"$NightRunner_MobCount","objective":"Nightrunner_MobCount"}},{"text":" mobs with Nightrunner tag"}]
# kill all
kill @e[tag=Nightrunner]