# Generated with MC-Build

# Give the player lvl 100 absorption effect
effect give @s minecraft:absorption 1 100 true
# Set the players max absorption to the correct amount
$attribute @s minecraft:generic.max_absorption base set $(amount)
# Clear effect to remove the absorption effect and only keep the max absorption
effect clear @s minecraft:absorption