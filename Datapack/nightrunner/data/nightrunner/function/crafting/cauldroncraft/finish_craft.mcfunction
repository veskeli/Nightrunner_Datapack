# Generated with MC-Build

# Check if lava cauldron still exists
execute as @s at @s run execute unless block ~ ~-1 ~ lava_cauldron run function nightrunner:crafting/cauldroncraft/generated/2
execute as @s at @s run execute if block ~ ~-1 ~ lava_cauldron run function nightrunner:crafting/cauldroncraft/generated/3
# Kill item display
execute at @s run kill @e[type=item_display,limit=1,sort=nearest,tag=cauldroncraft]
# Kill interactable
kill @s