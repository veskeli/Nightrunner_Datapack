# Generated with MC-Build

# Header
tellraw @s [{"text":"=====","color":"yellow"},{"text":"Nightrunner settings","bold":true,"color":"gold"},{"text":"=====","color":"yellow"}]
execute if score $Nightrunner Nightrunner_UseHealthSystem matches 1 run tellraw @s ["",{"text":"Health system: "},{"text":"Click to toggle","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_health_system"}},{"text":" » "},{"text":"ON","color":"green","bold":true}]
execute if score $Nightrunner Nightrunner_UseHealthSystem matches 0 run tellraw @s ["",{"text":"Health system: "},{"text":"Click to toggle","color":"red","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_health_system"}},{"text":" » "},{"text":"OFF","color":"red","bold":true}]
execute if score $Nightrunner Nightrunner_UseReviveSystem matches 1 run tellraw @s ["",{"text":"Revive system: "},{"text":"Click to toggle","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_revive_system"}},{"text":" » "},{"text":"ON","color":"green","bold":true}]
execute if score $Nightrunner Nightrunner_UseReviveSystem matches 0 run tellraw @s ["",{"text":"Revive system: "},{"text":"Click to toggle","color":"red","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_revive_system"}},{"text":" » "},{"text":"OFF","color":"red","bold":true}]
execute if score $Nightrunner Nightrunner_CustomMobsEnabled matches 1 run tellraw @s ["",{"text":"Custom mobs: "},{"text":"Click to toggle","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_custom_mobs"}},{"text":" » "},{"text":"ON","color":"green","bold":true}]
execute if score $Nightrunner Nightrunner_CustomMobsEnabled matches 0 run tellraw @s ["",{"text":"Custom mobs: "},{"text":"Click to toggle","color":"red","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/toggles/toggle_custom_mobs"}},{"text":" » "},{"text":"OFF","color":"red","bold":true}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text": " "}]
tellraw @s [{"text":"=====","color":"yellow"},{"text":" 1 / 2 ","bold":true,"color":"gold"},{"text":"=====","color":"yellow"}]