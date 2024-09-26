# Generated with MC-Build

summon marker ~ ~1 ~ {Tags:["boulder_wand_marker","boulder_wand_marker_0","spawned"]}
execute if block ~ ~1 ~ minecraft:cobblestone run tag @e[type=marker,tag=boulder_wand_marker_0,tag=!filled] add block_destroy
execute at @e[type=marker,sort=nearest,limit=1] run function nightrunner:items/tools/boulder_wand/fill
schedule function nightrunner:items/tools/boulder_wand/spread 0.3s replace