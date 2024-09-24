# Generated with MC-Build

# add a level
scoreboard players add @s Nightrunner_MiningSkillLevel 1
# reset the points
scoreboard players reset @s Nightrunner_MiningSkillPoints
# reset the last update points
scoreboard players set @s Nightrunner_MiningSkillPointsLastUpdate 0
# play level up sound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 0.8
# update the player attributes
execute as @s run function nightrunner:skills/mining_skill/set_mining_skill_attributes
# show level up message
tellraw @s [{"text":"Mining Skill Leveled Up! ","color":"green","bold":true,"italic":true},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"}},{"text":"]","color":"yellow"}]
# broadcast the mining skill
scoreboard players operation @s Nightrunner_MiningLevelModulus = @s Nightrunner_MiningSkillLevel
scoreboard players set $Nightrunner Nightrunner_MiningLevelModulus 5
scoreboard players operation @s Nightrunner_MiningLevelModulus %= $Nightrunner Nightrunner_MiningLevelModulus
execute if score @s Nightrunner_MiningLevelModulus matches 0 run tag @s add broadcaster
execute if score @s Nightrunner_MiningLevelModulus matches 0 run tellraw @a[tag=!broadcaster] [{"selector":"@s"},{"text":" has leveled up their Mining Skill! Now at ","color":"green"},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute if score @s Nightrunner_MiningLevelModulus matches 0 run tag @s remove broadcaster
# Milestone lvl 50
execute if score @s Nightrunner_MiningSkillLevel matches 50 run function nightrunner:skills/mining_skill/generated/1
# Update attributes if milestone is reached (If player gets the level or higher)
execute if score @s Nightrunner_MiningSkillLevel matches 50.. run function nightrunner:skills/mining_skill/generated/2
# Update attributes if milestone is not reached (If player loses the level)
execute if score @s Nightrunner_MiningSkillLevel matches ..49 run function nightrunner:skills/mining_skill/generated/3
# Milestone lvl 100
execute if score @s Nightrunner_MiningSkillLevel matches 100 run function nightrunner:skills/mining_skill/generated/4
# Milestone lvl 200
execute if score @s Nightrunner_MiningSkillLevel matches 200 run function nightrunner:skills/mining_skill/generated/5
# Update attributes if milestone is reached (If player gets the level or higher)
execute if score @s Nightrunner_MiningSkillLevel matches 200.. run function nightrunner:skills/mining_skill/generated/6
# Update attributes if milestone is not reached (If player loses the level)
execute if score @s Nightrunner_MiningSkillLevel matches ..199 run function nightrunner:skills/mining_skill/generated/7