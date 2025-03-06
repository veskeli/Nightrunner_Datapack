# Generated with MC-Build

# Check if the player used the bell
execute as @a if score @s Nightrunner_MagicSkillPoints matches 1.. run function nightrunner:skills/magic_skill/check_magic
# MARK: Check Max mana
execute as @a run function nightrunner:skills/magic_skill/mana_check
# Milestone lvl 50 | +1 seconds slowness on hit
execute if score @s Nightrunner_MagicSkillLevel matches 50 run function nightrunner:skills/magic_skill/generated/0
# Milestone lvl 75 | Natural Mana Regeneration
execute if score @s Nightrunner_MagicSkillLevel matches 75 run function nightrunner:skills/magic_skill/generated/1
# Milestone lvl 100 | Double mana regen | 2x Wand distance
execute if score @s Nightrunner_MagicSkillLevel matches 100 run function nightrunner:skills/magic_skill/generated/2