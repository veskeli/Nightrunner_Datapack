# Generated with MC-Build

execute if score @s Nightrunner_Mana > @s Nightrunner_ManaMax run scoreboard players operation @s Nightrunner_Mana = @s Nightrunner_ManaMax
execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":1}}}}}] run execute if predicate nightrunner:10change run return run scoreboard players remove @s Nightrunner_Mana 0
execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":2}}}}}] run execute if predicate nightrunner:35change run return run scoreboard players remove @s Nightrunner_Mana 0
execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":3}}}}}] run execute if predicate nightrunner:50change run return run scoreboard players remove @s Nightrunner_Mana 0
execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..}] run scoreboard players remove @s Nightrunner_Mana 1