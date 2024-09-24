# Generated with MC-Build

# Update the last update points
scoreboard players operation @s Nightrunner_MiningSkillPointsLastUpdate = @s Nightrunner_MiningSkillPoints
# If level is more then 100 then add small speed boost
execute if score @s Nightrunner_MiningSkillLevel matches 100.. run function nightrunner:skills/mining_skill/generated/0
# If level is more then 125 then add small speed boost
execute if score @s Nightrunner_MiningSkillLevel matches 125.. run execute if predicate nightrunner:10change run function nightrunner:skills/mining_skill/generated/1