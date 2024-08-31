# Generated with MC-Build

# reset mana xp
scoreboard players operation @s Nightrunner_Mana += @s Nightrunner_ManaXP
scoreboard players reset @s Nightrunner_ManaXP
# clamp mana
execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax