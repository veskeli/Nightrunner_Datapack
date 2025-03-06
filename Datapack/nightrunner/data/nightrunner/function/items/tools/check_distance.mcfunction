# Generated with MC-Build

execute as @s run scoreboard players operation @s Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRangeDefault
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 2
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 2
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 2
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 2
# Wizard armor @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,components:{"minecraft:custom_data":{wizard_boots:1b}}}]}]
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,components:{"minecraft:custom_data":{wizard_boots:1b}}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,components:{"minecraft:custom_data":{wizard_leggings:1b}}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,components:{"minecraft:custom_data":{wizard_chestplate:1b}}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 5
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,components:{"minecraft:custom_data":{wizard_helmet:1b}}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 5
# Every 5 levels of magic skill raise the range by 1
scoreboard players set #5 Nightrunner_MagicSkillLevel 5
execute as @s run scoreboard players operation #operation Nightrunner_RangedSpellRange = @s Nightrunner_MagicSkillLevel
execute as @s run scoreboard players operation #operation Nightrunner_RangedSpellRange /= #5 Nightrunner_MagicSkillLevel
# 100 lvl milestone | 2x range
scoreboard players set #100 Nightrunner_MagicSkillLevel 2
execute as @s if score @s Nightrunner_MagicSkillLevel matches 100.. run scoreboard players operation @s Nightrunner_RangedSpellRange *= #100 Nightrunner_MagicSkillLevel
# Add the result to the range
execute as @s run scoreboard players operation @s Nightrunner_RangedSpellRange += #operation Nightrunner_RangedSpellRange