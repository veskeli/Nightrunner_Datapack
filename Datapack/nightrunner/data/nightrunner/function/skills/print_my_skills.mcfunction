# Generated with MC-Build

# Mining Skill Level
tellraw @s [{"text":"⚒ Mining Skill Level: ","color":"green","bold":true},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"},"color":"yellow","bold":true}]
# Mining Milestone Bonuses
tellraw @s [{"text":"Mining Milestone Bonuses:","color":"gold"}]
execute if score @s Nightrunner_MiningSkillLevel matches 50.. run tellraw @s [{"text":"- Reach distance increased by +0.25 blocks (Level 50)","color":"yellow"}]
execute if score @s Nightrunner_MiningSkillLevel matches 100.. run tellraw @s [{"text":"- Temporary speed boost when mining ore (Level 100)","color":"yellow"}]
execute if score @s Nightrunner_MiningSkillLevel matches 125.. run tellraw @s [{"text":"- 10% chance for temporary heart when mining ore (Level 125)","color":"yellow"}]
execute if score @s Nightrunner_MiningSkillLevel matches 200.. run tellraw @s [{"text":"- Reach distance +0.25 blocks & enchant with grindstone (Level 200)","color":"yellow"}]
# Magic Skill Level
tellraw @s [{"text":"✨ Magic Skill Level: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"Nightrunner_MagicSkillLevel"},"color":"yellow","bold":true}]
# Magic Milestone Bonuses
tellraw @s [{"text":"Magic Milestone Bonuses:","color":"gold"}]
execute if score @s Nightrunner_MagicSkillLevel matches 20.. run tellraw @s [{"text":"- Receive half mana when nearby players pick it up (Level 20)","color":"yellow"}]