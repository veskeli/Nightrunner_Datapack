# Generated with MC-Build

# Reset advancement
advancement revoke @s only nightrunner:interacted_with_cauldron_left
# execute at @s as @n[type=minecraft:interaction,predicate={name of your predicate}] run tag @s add interaction
execute at @s as @n[type=minecraft:interaction,predicate=nightrunner:interaction_left_clicked] run tag @s add interaction
# Check wich interaction was clicked
execute as @e[tag=interaction] run function nightrunner:crafting/cauldroncraft/left_clicked/handle_interaction