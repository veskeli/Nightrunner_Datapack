# Generated with MC-Build

execute as @s run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft
# Clear the player who clicked from item display
execute as @s run data remove entity @s interaction
# remove tag
tag @s remove interaction