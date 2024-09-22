# Generated with MC-Build

execute as @s run scoreboard players operation @s Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRangeDefault
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
# Wizard armor
#execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"},components:{"minecraft:custom_data":{wizard_boots}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
#execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"},components:{"minecraft:custom_data":{wizard_leggings}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
#execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"},components:{"minecraft:custom_data":{wizard_chestplate}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7
#execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},components:{"minecraft:custom_data":{wizard_helmet}}]}] run scoreboard players add @s Nightrunner_RangedSpellRange 7