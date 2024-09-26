# Generated with MC-Build

execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5
# Store the id
execute store result storage nightrunner:pearl_wand owner.id int 1 run scoreboard players get @s Nightrunner_PearlWandID
# cancel the teleportation to owner
function nightrunner:items/tools/pearl_wand/canceled with storage nightrunner:pearl_wand owner
kill @s