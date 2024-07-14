# Generated with MC-Build

# Check if already crafting
execute as @s run execute if score @s Nightrunner_CauldronCraftingTimer matches 1.. run return 1
# Check if the lava cauldron still exists
execute as @s at @s run execute unless block ~ ~-1 ~ lava_cauldron run return run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft/generated/2
# Check if the player has the rotten flesh in hand
execute as @a[limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:poisonous_potato",components:{"minecraft:custom_data":{dried_rotten_flesh:true}}}}] run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft/check_amount
# Check if craft can continue
execute at @s run execute unless entity @a[distance=..8,limit=1,tag=AmountExceeded] run return run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft/generated/5
# Set item display to show rotten flesh
data merge entity @e[type=item_display,limit=1,sort=nearest,tag=forge_core] {CustomNameVisible:0b,start_interpolation:0,interpolation_duration:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":1121}}}
execute as @s run scoreboard players set @s Nightrunner_CauldronCraftingTimer 100