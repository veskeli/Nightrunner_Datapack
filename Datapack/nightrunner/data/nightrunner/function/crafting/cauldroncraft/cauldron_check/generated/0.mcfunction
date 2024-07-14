# Generated with MC-Build

# Check if duplicate
execute as @s run execute if entity @e[type=item_display,nbt={Tags:["forge_core"]},distance=..1] run return run function nightrunner:crafting/cauldroncraft/cauldron_check/generated/1
# Summon item display
execute at @s run summon item_display ~ ~0.5 ~ {billboard:"vertical",item:{id:"minecraft:item_frame",count:1,components:{"minecraft:custom_model_data":1124}},Tags:["forge_core"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
# Summon interactable (to detect interaction with brewing stand)
execute at @s run summon interaction ~ ~ ~ {width:0.75,height:0.75,response:0.75,Tags:["CauldronCraftInteractable"]}
# Kill the item frame
kill @s