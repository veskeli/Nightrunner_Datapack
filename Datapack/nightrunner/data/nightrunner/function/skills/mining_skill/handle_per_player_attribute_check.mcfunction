# Generated with MC-Build

# MARK: Mining milestone
# update the player attributes
execute as @s run function nightrunner:skills/mining_skill/set_mining_skill_attributes
# Update attributes if milestone is reached (If player gets the level or higher)
execute if score @s Nightrunner_MiningSkillLevel matches 50.. run function nightrunner:skills/mining_skill/generated/3
# Update attributes if milestone is not reached (If player loses the level)
execute if score @s Nightrunner_MiningSkillLevel matches ..49 run function nightrunner:skills/mining_skill/generated/4
# Update attributes if milestone is reached (If player gets the level or higher)
execute if score @s Nightrunner_MiningSkillLevel matches 200.. run function nightrunner:skills/mining_skill/generated/5
# Update attributes if milestone is not reached (If player loses the level)
execute if score @s Nightrunner_MiningSkillLevel matches ..199 run function nightrunner:skills/mining_skill/generated/6