# Generated with MC-Build

# Summon a grave block
execute at @s run summon block_display ~ ~1 ~ {CustomNameVisible:1b,CustomName:'"Grave"',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:stone_brick_wall",Properties:{east:"low",west:"low",up:"true"}},Tags:["Grave"]}
# Summon interactable
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,nbt={Tags:["Grave"]}] at @s positioned ~ ~-1 ~ summon interaction run data merge entity @s {width:1,height:1,response:1,Tags:[GraveInteractable]}
# Set the grave id to match the player id
execute as @s run scoreboard players operation @e[type=block_display,nbt={Tags:["Grave"]},sort=nearest,limit=1] Nightrunner_GraveID = @s Nightrunner_ID
# Set the interactable id to match the player id
execute as @s run scoreboard players operation @e[type=interaction,nbt={Tags:["GraveInteractable"]},sort=nearest,limit=1] Nightrunner_GraveID = @s Nightrunner_ID