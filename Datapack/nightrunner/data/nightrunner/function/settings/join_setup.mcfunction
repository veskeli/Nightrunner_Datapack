# Generated with MC-Build

# Set the player as joined
scoreboard players set @s Nightrunner_Joined 1
# +1 to the internal id
scoreboard players add $Nightrunner_Internal_ID Nightrunner_ID 1
# Set the player id
scoreboard players operation @s Nightrunner_ID = $Nightrunner_Internal_ID Nightrunner_ID
# TEMP: Set the player spell distance
scoreboard players set @s Nightrunner_RangedSpellRange 40
execute as @s run function #nightrunner:on_join