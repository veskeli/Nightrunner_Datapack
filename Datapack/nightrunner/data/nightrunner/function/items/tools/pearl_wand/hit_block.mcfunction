# Generated with MC-Build

summon marker ~ ~1.25 ~-0.5 {Tags:["pearl_wand_marker","pearl_wand_marker_0","spawned"]}
playsound minecraft:entity.player.teleport master @s ~ ~-1 ~0.5 0.5 1
execute as @a[sort=nearest,limit=1,tag=raycasting] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute as @e[type=marker,tag=pearl_wand_marker_0] run function nightrunner:items/tools/pearl_wand/generated/1