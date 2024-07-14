# Generated with MC-Build

# Check if the player has the dried rotten flesh in hand
execute as @a[limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:poisonous_potato",components:{"minecraft:custom_data":{dried_rotten_flesh:true}}}}] run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft/generated/3