# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner:items/consumables/enchanted_golden_apple/used_enchanted_golden_apple
# Return if max health is more then 22
execute if score @s Nightrunner_MaxHealth matches 22.. run return 1
# Set the player health to 22
# Update the max health score
scoreboard players set @s Nightrunner_MaxHealth 22
# Update the max health attribute
attribute @s minecraft:generic.max_health base set 22