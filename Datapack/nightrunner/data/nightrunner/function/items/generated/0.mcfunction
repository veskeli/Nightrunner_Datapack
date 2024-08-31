# Generated with MC-Build

# reset mana xp
scoreboard players operation @s Nightrunner_ManaTemp += @s Nightrunner_ManaXP
scoreboard players reset @s Nightrunner_ManaXP
execute if score @s Nightrunner_ManaTemp matches 100.. run function nightrunner:items/generated/1
# clamp mana
execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax