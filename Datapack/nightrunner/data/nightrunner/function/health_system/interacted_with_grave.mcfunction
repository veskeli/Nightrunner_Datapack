# Generated with MC-Build

# Reset advancement
advancement revoke @s only nightrunner:interacted_with_grave
# add tag to interaction
execute at @s as @n[type=minecraft:interaction,predicate=nightrunner:interaction_right_clicked] run tag @s add interaction
# add tag
tag @s add interaction_player
# Check if the player who interacted is holding the soulstone
execute as @a[limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:music_disc_11",components:{"minecraft:custom_data":{soulstone:true}}}}] run function nightrunner:health_system/generated/1
execute if score $Nightrunner Nightrunner_AttemptRevive matches 1 run function nightrunner:health_system/generated/2
# Check wich interaction was clicked
execute as @e[tag=interaction,limit=1] run function nightrunner:health_system/handle_interaction
scoreboard players reset $Nightrunner Nightrunner_GraveID
scoreboard players reset $Nightrunner Nightrunner_AttemptRevive
tag @s remove SoulstoneInHand
tag @s remove interaction_player