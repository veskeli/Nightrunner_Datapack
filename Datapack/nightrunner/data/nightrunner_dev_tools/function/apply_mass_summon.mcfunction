# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner_dev_tools:used_mass_summon
# if player is sneaking say they can't use the tool
execute if entity @s[predicate=nightrunner_dev_tools:is_sneaking] run return run function nightrunner_dev_tools:open_mass_summon_settings
# Summon based on the selected summon score [zombie=1, skeleton=2, creeper=3, spider=4, enderman=5, witch=6, wither_skeleton=7, zombie_villager=8, husk=9, stray=10, villager=11, iron_golem=12]
execute if score @s Nightrunner_SelectedMassSummon matches 1 run return run function nightrunner_dev_tools:generated/0
execute if score @s Nightrunner_SelectedMassSummon matches 2 run return run function nightrunner_dev_tools:generated/2
execute if score @s Nightrunner_SelectedMassSummon matches 3 run return run function nightrunner_dev_tools:generated/4
execute if score @s Nightrunner_SelectedMassSummon matches 4 run return run function nightrunner_dev_tools:generated/6
execute if score @s Nightrunner_SelectedMassSummon matches 5 run return run function nightrunner_dev_tools:generated/8
execute if score @s Nightrunner_SelectedMassSummon matches 6 run return run function nightrunner_dev_tools:generated/10
execute if score @s Nightrunner_SelectedMassSummon matches 7 run return run function nightrunner_dev_tools:generated/12
execute if score @s Nightrunner_SelectedMassSummon matches 8 run return run function nightrunner_dev_tools:generated/14
execute if score @s Nightrunner_SelectedMassSummon matches 9 run return run function nightrunner_dev_tools:generated/16
execute if score @s Nightrunner_SelectedMassSummon matches 10 run return run function nightrunner_dev_tools:generated/18
execute if score @s Nightrunner_SelectedMassSummon matches 11 run return run function nightrunner_dev_tools:generated/20
execute if score @s Nightrunner_SelectedMassSummon matches 12 run return run function nightrunner_dev_tools:generated/22