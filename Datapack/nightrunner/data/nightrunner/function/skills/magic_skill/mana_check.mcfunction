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
# Every 25 levels of magic skill raise the max mana by 1
scoreboard players set #5 Nightrunner_MagicSkillLevel 25
execute as @s run scoreboard players operation #operation Nightrunner_ManaMax = @s Nightrunner_MagicSkillLevel
execute as @s run scoreboard players operation #operation Nightrunner_ManaMax /= #5 Nightrunner_MagicSkillLevel
# Add the result to the max mana
execute as @s run scoreboard players operation @s Nightrunner_ManaMax += #operation Nightrunner_ManaMax
# If iron armor is equipped then remove mana (3 each)
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run scoreboard players remove @s Nightrunner_ManaMax 3
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] run scoreboard players remove @s Nightrunner_ManaMax 3
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] run scoreboard players remove @s Nightrunner_ManaMax 3
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] run scoreboard players remove @s Nightrunner_ManaMax 3
# If diamond armor is equipped then add mana (5 each)
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] run scoreboard players remove @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] run scoreboard players remove @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] run scoreboard players remove @s Nightrunner_ManaMax 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] run scoreboard players remove @s Nightrunner_ManaMax 5