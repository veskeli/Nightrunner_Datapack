# Generated with MC-Build

# Header
tellraw @s [{"text":"=====","color":"yellow"},{"text":"Select summon","bold":true,"color":"green"},{"text":"=====","color":"yellow"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 1 run tellraw @s ["",{"text":"Zombie ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:1}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 1 run tellraw @s ["",{"text":"Zombie ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 2 run tellraw @s ["",{"text":"Skeleton ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:2}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 2 run tellraw @s ["",{"text":"Skeleton ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 3 run tellraw @s ["",{"text":"Creeper ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:3}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 3 run tellraw @s ["",{"text":"Creeper ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 4 run tellraw @s ["",{"text":"Spider ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:4}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 4 run tellraw @s ["",{"text":"Spider ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 5 run tellraw @s ["",{"text":"Enderman ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:5}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 5 run tellraw @s ["",{"text":"Enderman ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 6 run tellraw @s ["",{"text":"Witch ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:6}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 6 run tellraw @s ["",{"text":"Witch ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 7 run tellraw @s ["",{"text":"Wither Skeleton ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:7}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 7 run tellraw @s ["",{"text":"Wither Skeleton ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 8 run tellraw @s ["",{"text":"Zombie Villager ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:8}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 8 run tellraw @s ["",{"text":"Zombie Villager ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 9 run tellraw @s ["",{"text":"Husk ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:9}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 9 run tellraw @s ["",{"text":"Husk ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 10 run tellraw @s ["",{"text":"Stray ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:10}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 10 run tellraw @s ["",{"text":"Stray ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 11 run tellraw @s ["",{"text":"Villager ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:11}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 11 run tellraw @s ["",{"text":"Villager ["},{"text":"Selected","color":"blue"},{"text":"]"}]
execute unless score @s Nightrunner_SelectedMassSummon matches 12 run tellraw @s ["",{"text":"Iron Golem ["},{"text":"Click to select","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner_dev_tools:set_mass_summon {new:12}"}},{"text":"]"}]
execute if score @s Nightrunner_SelectedMassSummon matches 12 run tellraw @s ["",{"text":"Iron Golem ["},{"text":"Selected","color":"blue"},{"text":"]"}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text":"=====","color":"yellow"},{"text":" ==== ","bold":true,"color":"green"},{"text":"=====","color":"yellow"}]