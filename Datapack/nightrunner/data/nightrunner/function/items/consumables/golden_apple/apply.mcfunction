# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner:items/consumables/golden_apple/used_golden_apple
# Return if max health is more then 20
execute if score @s Nightrunner_MaxHealth matches 20.. run return 1
# Set the player health to 20
# Update the max health score
scoreboard players set @s Nightrunner_MaxHealth 20
# Update the max health attribute
attribute @s minecraft:generic.max_health base set 20