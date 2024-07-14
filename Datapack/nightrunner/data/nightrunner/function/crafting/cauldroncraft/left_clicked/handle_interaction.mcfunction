# Generated with MC-Build

# Clear the player who clicked from item display
execute as @s run data remove entity @s attack
execute as @s run function nightrunner:crafting/cauldroncraft/cancel_craft
# kill the item display
execute at @s run kill @e[type=item_display,nbt={Tags:["forge_core"]},sort=nearest,limit=1]
# kill the interactable
kill @s