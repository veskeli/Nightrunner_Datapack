# Generated with MC-Build

# Check if the player used the default warp fungus on a stick and ignore it
execute as @a if score @s Nightrunner_Used_Magic_tool matches 2.. run scoreboard players reset @s Nightrunner_Used_Magic_tool
# show mana bar if wnat is in the player's main hand
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true}}}}] run function nightrunner:items/tools/show_cooldown_bar
# show mana bar if wnat is in the player's off hand
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{wand:1b}}}]}] run function nightrunner:items/tools/show_cooldown_bar