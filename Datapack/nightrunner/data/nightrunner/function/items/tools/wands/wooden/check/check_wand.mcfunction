# Generated with MC-Build

# Selected item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{wooden_wand:true,wand:true}}}}] run execute at @s run function nightrunner:items/tools/wands/wooden/start_raycast
# Offhand item
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{wooden_wand:true,wand:true}}}]}] run function nightrunner:items/tools/wands/wooden/spell_heal
# Reset
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{wooden_wand:true,wand:true}}}}] run scoreboard players reset @s Nightrunner_Used_Magic_tool
# Offhand item
# execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{<%data.Namespace%>:true,wand:true}}}]}] run function nightrunner:items/tools/wands/<%data.FunctionName%>/use_secondary
# Reset
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{wooden_wand:true,wand:true}}}]}] run scoreboard players reset @s Nightrunner_Used_Magic_tool