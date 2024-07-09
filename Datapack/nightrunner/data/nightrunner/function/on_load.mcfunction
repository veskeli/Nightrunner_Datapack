# Generated with MC-Build

#=================================================
# Load all scoreboards
#=================================================
#================= internal scoreboard
scoreboard objectives add nightrunner.internal dummy
#================= Settings
scoreboard objectives add Nightrunner_BlockMobs dummy
# Operators
scoreboard objectives add Nightrunner_Op dummy
# open settings trigger
scoreboard objectives add Open_Nightrunner_Settings trigger
#================= Join
scoreboard objectives add Nightrunner_Joined dummy
scoreboard objectives add Nightrunner_ID dummy
#=================================================
# Gamerules
#=================================================
gamerule commandBlockOutput false
gamerule playersSleepingPercentage 50
gamerule doInsomnia false
#=================================================
# Show the welcome message
#=================================================
# Show the welcome message (Takes build number [int] and update message [raw])
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
tellraw @a ["",{"text":"More dev tools","color":"aqua"},{"text":" update"}]
tellraw @a ["",{"text":"(Build "},{"text":"2","underlined":true,"color":"yellow"},{"text":")"}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]