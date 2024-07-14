# Generated with MC-Build

# Reset advancement
advancement revoke @s only nightrunner:interacted_with_cauldron_right
# execute at @s as @n[type=minecraft:interaction,predicate={name of your predicate}] run tag @s add interaction
execute at @s as @n[type=minecraft:interaction,predicate=nightrunner:interaction_right_clicked] run tag @s add interaction
# add tag
tag @s add interaction_player
# Check wich interaction was clicked
execute as @e[tag=interaction] run function nightrunner:crafting/cauldroncraft/right_clicked/handle_interaction
execute as @s[tag=!AmountExceeded] run execute as @s[tag=!ErrorShowed] run tellraw @s [{"text":"This item is not a valid recipe for the cauldron.","color":"red"}]
tag @s remove ErrorShowed
tag @s remove interaction_player
tag @s remove AmountExceeded