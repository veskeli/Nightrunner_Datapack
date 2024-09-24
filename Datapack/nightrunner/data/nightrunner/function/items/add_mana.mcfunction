# Generated with MC-Build

# Add mana macro
$execute as @s run scoreboard players add @s Nightrunner_Mana $(amount)
# clamp mana
execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax