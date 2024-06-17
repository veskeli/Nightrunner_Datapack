# Generated with MC-Build

# Load all scoreboards
scoreboard objectives add nightrunner.internal dummy
scoreboard objectives add NRDiff_BlockMobs dummy
# Show the welcome message
# 20 lines
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a ["",{"text":"Nightrunner Difficulty","bold":true,"color":"gold"},{"text":"Settings:","bold":true}]
tellraw @a ["",{"text":"["},{"text":"OpenSettings","color":"green","clickEvent":{"action":"run_command","value":"/function nightrunner:settings/settings"}},{"text":"]"}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a {"text":"Nightrunner loaded!","bold":true,"color":"gold"}
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a ["",{"text":"New Start","color":"aqua"},{"text":" update"}]
tellraw @a ["",{"text":"(Build "},{"text":"1","underlined":true,"color":"yellow"},{"text":")"}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]