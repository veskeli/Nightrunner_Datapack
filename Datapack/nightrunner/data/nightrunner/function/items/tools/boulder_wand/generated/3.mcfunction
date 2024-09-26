# Generated with MC-Build

tag @s add filled
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dx=1] run summon marker ~1 ~ ~ {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dx=-1] run summon marker ~-1 ~ ~ {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dz=1] run summon marker ~ ~ ~1 {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dz=-1] run summon marker ~ ~ ~-1 {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dy=1] run summon marker ~ ~1 ~ {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
# execute unless entity @e[tag=boulder_wand_marker,distance=..1,dy=-1] run summon marker ~ ~-1 ~ {Tags:["boulder_wand_marker","boulder_wand_marker_<%i%>","spawned"]}
execute if block ~1 ~ ~ minecraft:air run summon marker ~1 ~ ~ {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
execute if block ~-1 ~ ~ minecraft:air run summon marker ~-1 ~ ~ {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
execute if block ~ ~ ~1 minecraft:air run summon marker ~ ~ ~1 {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
execute if block ~ ~ ~-1 minecraft:air run summon marker ~ ~ ~-1 {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
execute if block ~ ~1 ~ minecraft:air run summon marker ~ ~1 ~ {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
execute if block ~ ~-1 ~ minecraft:air run summon marker ~ ~-1 ~ {Tags:["boulder_wand_marker","boulder_wand_marker_2","spawned"]}
scoreboard players set #bool Nightrunner_BoulderWandMarkerTimer 1