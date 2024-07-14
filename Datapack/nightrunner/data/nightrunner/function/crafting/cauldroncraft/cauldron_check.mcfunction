# Generated with MC-Build

# Check if its on top of a cauldron
execute at @s run execute if block ~ ~-0.5 ~ #minecraft:cauldrons run return run function nightrunner:crafting/cauldroncraft/cauldron_check/generated/0
# cancel
execute at @s run function nightrunner:items/forge_core/summon
# Kill the item frame
kill @s