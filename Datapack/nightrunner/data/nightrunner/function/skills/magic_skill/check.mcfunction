# Generated with MC-Build

# Check if the player used the bell
execute as @a if score @s Nightrunner_MagicSkillPoints matches 1.. run function nightrunner:skills/magic_skill/check_magic
# MARK: Check Max mana
execute as @a run function nightrunner:skills/magic_skill/mana_check