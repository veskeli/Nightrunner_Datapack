# Generated with MC-Build

# Add damage to item
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}}] run execute if predicate nightrunner:50change run return 1
execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}]}] run execute if predicate nightrunner:50change run return 1
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":2}}}}}] run execute if predicate nightrunner:66change run return 1
execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":2}}}}]}] run execute if predicate nightrunner:66change run return 1
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":3}}}}}] run execute if predicate nightrunner:75change run return 1
execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{iron_staff:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":3}}}}]}] run execute if predicate nightrunner:75change run return 1
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{iron_staff:true,wand:true}}}}] run item modify entity @s weapon.mainhand nightrunner:damage_item
execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{iron_staff:true,wand:true}}}]}] run item modify entity @s weapon.offhand nightrunner:damage_item