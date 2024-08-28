# Generated with MC-Build

return 0
# Check if the player used magic tool
execute as @a if score @s Nightrunner_Used_Magic_tool matches 1 run function nightrunner:items/tools/wands/wooden/check_wand
# Reset the score if still 1
execute as @a if score @s Nightrunner_Used_Magic_tool matches 1 run scoreboard players reset @s Nightrunner_Used_Magic_tool