# Generated with MC-Build

scoreboard players remove @s Nightrunner_ManaTemp 850
scoreboard players add @s Nightrunner_Mana 1
# clamp mana
execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax