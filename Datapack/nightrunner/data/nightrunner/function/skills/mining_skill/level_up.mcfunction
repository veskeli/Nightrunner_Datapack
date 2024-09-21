# Generated with MC-Build

# add a level
scoreboard players add @s Nightrunner_MiningSkillLevel 1
# reset the points
scoreboard players reset @s Nightrunner_MiningSkillPoints
# play level up sound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 0.8
# update the player attributes
execute as @s run function nightrunner:skills/mining_skill/set_mining_skill_attributes
# show level up message
tellraw @s [{"text":"Mining Skill Leveled Up! ","color":"green","bold":true,"italic":true},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"}},{"text":"]","color":"yellow"}]