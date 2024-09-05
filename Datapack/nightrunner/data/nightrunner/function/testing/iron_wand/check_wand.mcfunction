# Generated with MC-Build

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_wand:true,wand:true}}}}] run function nightrunner:testing/iron_wand/spell_heal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_wand:true,wand:true}}}}] run scoreboard players reset @s Nightrunner_Used_Magic_tool
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{iron_wand:true,wand:true}}}]}] run scoreboard players reset @s Nightrunner_Used_Magic_tool