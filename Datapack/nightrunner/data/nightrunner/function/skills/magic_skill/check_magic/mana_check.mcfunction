# Generated with MC-Build

# Make sure player has base max mana
execute unless score @s Nightrunner_ManaMaxBase matches 0.. run scoreboard players set @s Nightrunner_ManaMaxBase 20
# Add base to max mana
execute as @s run scoreboard players operation @s Nightrunner_ManaMax = @s Nightrunner_ManaMaxBase
# Check wizard armor bonus
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,components:{"minecraft:custom_data":{wizard_boots:1b}}}]}] run scoreboard players add @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,components:{"minecraft:custom_data":{wizard_leggings:1b}}}]}] run scoreboard players add @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,components:{"minecraft:custom_data":{wizard_chestplate:1b}}}]}] run scoreboard players add @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,components:{"minecraft:custom_data":{wizard_helmet:1b}}}]}] run scoreboard players add @s Nightrunner_ManaMax 5
# Check wizard armor set bonus
scoreboard players set @s Nightrunner_WizardArmorSetBonus 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,components:{"minecraft:custom_data":{wizard_boots:1b}}}]}] run scoreboard players add @s Nightrunner_WizardArmorSetBonus 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,components:{"minecraft:custom_data":{wizard_leggings:1b}}}]}] run scoreboard players add @s Nightrunner_WizardArmorSetBonus 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,components:{"minecraft:custom_data":{wizard_chestplate:1b}}}]}] run scoreboard players add @s Nightrunner_WizardArmorSetBonus 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,components:{"minecraft:custom_data":{wizard_helmet:1b}}}]}] run scoreboard players add @s Nightrunner_WizardArmorSetBonus 1
# Apply wizard armor set bonus
execute as @s if score @s Nightrunner_WizardArmorSetBonus matches 4.. run scoreboard players add @s Nightrunner_ManaMax 5