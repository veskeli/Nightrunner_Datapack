# Generated with MC-Build

scoreboard objectives add Nightrunner_BlockMobs dummy
# Operators
scoreboard objectives add Nightrunner_Op dummy
# open settings trigger
scoreboard objectives add Open_Nightrunner_Settings trigger
#================= Join
scoreboard objectives add Nightrunner_Joined dummy
scoreboard objectives add Nightrunner_ID dummy
# First time load
scoreboard objectives add Nightrunner_FirstTime dummy
# Check if first time
execute unless score $Nightrunner Nightrunner_FirstTime matches 1 run function nightrunner:settings/first_time