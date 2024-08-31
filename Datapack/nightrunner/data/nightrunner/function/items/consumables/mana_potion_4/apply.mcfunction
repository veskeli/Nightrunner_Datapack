# Generated with MC-Build

scoreboard players add @s Nightrunner_Mana 35
# Clamp mana
execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax
# reset advancement
advancement revoke @s only nightrunner:items/consumables/mana_potion_4/used