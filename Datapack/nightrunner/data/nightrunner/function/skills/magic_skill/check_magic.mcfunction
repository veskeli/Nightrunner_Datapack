# Generated with MC-Build

# execute the magic skill function
function nightrunner:skills/magic_skill/collected_points
# Check level up
execute if score @s[scores={Nightrunner_MagicSkillLevel=11..}] Nightrunner_MagicSkillPoints matches 20.. run function nightrunner:skills/magic_skill/level_up
execute if score @s Nightrunner_MagicSkillLevel matches 11.. run return 1
execute if score @s[scores={Nightrunner_MagicSkillLevel=51..}] Nightrunner_MagicSkillPoints matches 50.. run function nightrunner:skills/magic_skill/level_up
execute if score @s Nightrunner_MagicSkillLevel matches 51.. run return 1
execute if score @s[scores={Nightrunner_MagicSkillLevel=101..}] Nightrunner_MagicSkillPoints matches 100.. run function nightrunner:skills/magic_skill/level_up
execute if score @s Nightrunner_MagicSkillLevel matches 101.. run return 1
execute if score @s Nightrunner_MagicSkillPoints matches 10.. run function nightrunner:skills/magic_skill/level_up
# MARK: Check Max mana
execute as @a run function nightrunner:skills/magic_skill/check_magic/mana_check