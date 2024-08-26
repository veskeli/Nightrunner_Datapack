# Generated with MC-Build

#=================================================
# Load all scoreboards
#=================================================
#================= internal scoreboard
scoreboard objectives add nightrunner.internal dummy
#=================================================
# Gamerules
#=================================================
gamerule commandBlockOutput false
# gamerule playersSleepingPercentage 50
gamerule doInsomnia false
#=================================================
# Show the welcome message
#=================================================
# Show the welcome message (Takes build number [int] and update message [raw])
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a {"text":"Nightrunner loaded!","bold":true,"color":"gold"}
tellraw @a [{"text": " "}]
tellraw @a [{"text": " "}]
tellraw @a ["",{"text":"Cauldron crafting!","color":"aqua"},{"text":" update"}]
tellraw @a ["",{"text":"(Build "},{"text":"4","underlined":true,"color":"yellow"},{"text":")"}]
tellraw @a [{"text": " "}]