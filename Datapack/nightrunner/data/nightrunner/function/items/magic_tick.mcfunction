# Generated with MC-Build

# check if player has xp mana
execute as @a[scores={Nightrunner_ManaXP=1..}] run function nightrunner:items/generated/0
execute as @a run execute if score @s Nightrunner_ManaTemp matches 250.. run function nightrunner:items/generated/2