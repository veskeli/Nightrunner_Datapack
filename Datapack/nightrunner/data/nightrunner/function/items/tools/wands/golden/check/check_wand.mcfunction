# Generated with MC-Build

# Selected item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{golden_wand:true,wand:true}}}}] run execute at @s run function nightrunner:items/tools/wands/golden/start_raycast
# Reset
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{golden_wand:true,wand:true}}}}] run scoreboard players reset @s Nightrunner_Used_Magic_tool
# Reset
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{golden_wand:true,wand:true}}}]}] run scoreboard players reset @s Nightrunner_Used_Magic_tool