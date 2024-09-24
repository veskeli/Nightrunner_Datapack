# Generated with MC-Build

execute as @s run execute if score @s Nightrunner_MiningSkill_coal_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_iron_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_copper_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_gold_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_redstone_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_emerald_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_lapis_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_diamond_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_nether_gold_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_nether_quartz_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_coal_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_iron_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_copper_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_gold_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_redstone_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_emerald_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_lapis_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_deepslate_diamond_ore matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
execute as @s run execute if score @s Nightrunner_MiningSkill_ancient_debris matches 1.. run scoreboard players add @s Nightrunner_MiningSkillPoints 1
function nightrunner:skills/mining_skill/reset_scores
execute unless score @s Nightrunner_MiningSkillPointsLastUpdate matches 0.. run scoreboard players set @s Nightrunner_MiningSkillPointsLastUpdate 0
execute if score @s Nightrunner_MiningSkillPointsLastUpdate < @s Nightrunner_MiningSkillPoints run function nightrunner:skills/mining_skill/collected_points
execute if score @s[scores={Nightrunner_MiningSkillLevel=101..}] Nightrunner_MiningSkillPoints matches 100.. run function nightrunner:skills/mining_skill/level_up
execute if score @s Nightrunner_MiningSkillLevel matches 101.. run return 1
execute if score @s[scores={Nightrunner_MiningSkillLevel=51..}] Nightrunner_MiningSkillPoints matches 20.. run function nightrunner:skills/mining_skill/level_up
execute if score @s Nightrunner_MiningSkillLevel matches 51.. run return 1
execute if score @s[scores={Nightrunner_MiningSkillLevel=11..}] Nightrunner_MiningSkillPoints matches 10.. run function nightrunner:skills/mining_skill/level_up
execute if score @s Nightrunner_MiningSkillLevel matches 11.. run return 1
execute if score @s Nightrunner_MiningSkillPoints matches 4.. run function nightrunner:skills/mining_skill/level_up