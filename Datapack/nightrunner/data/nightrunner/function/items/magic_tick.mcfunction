# Generated with MC-Build

# check if player has xp mana
execute as @a[scores={Nightrunner_ManaXP=1..}] run function nightrunner:items/generated/0
execute as @a if predicate nightrunner:in_nether run execute if score @s Nightrunner_ManaTemp matches 850.. run function nightrunner:items/generated/2
execute as @a unless predicate nightrunner:in_nether run execute if score @s Nightrunner_ManaTemp matches 850.. run function nightrunner:items/generated/3