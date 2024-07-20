# Generated with MC-Build

# Clear the player who clicked from item display
execute as @s run data remove entity @s interaction
# tell the grave owner id
execute as @s run tellraw @a[tag=interaction_player,sort=nearest,limit=1] [{"text":"Grave Owner ID: ","color":"green"},{"score":{"name":"@s","objective":"Nightrunner_GraveID"}}]
scoreboard players operation $Nightrunner Nightrunner_GraveID = @s Nightrunner_GraveID
# remove tag
tag @s remove interaction