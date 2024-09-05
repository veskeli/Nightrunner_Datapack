# Generated with MC-Build

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{golden_staff:true,wand:true}}}}] run execute at @s run function nightrunner:items/tools/golden_staff/start_raycast_mainhand
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{golden_staff:true,wand:true}}}]}] run execute at @s run function nightrunner:items/tools/golden_staff/start_raycast_offhand
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{golden_staff:true,wand:true}}}}] run scoreboard players reset @s Nightrunner_Used_Magic_tool
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{golden_staff:true,wand:true}}}]}] run scoreboard players reset @s Nightrunner_Used_Magic_tool