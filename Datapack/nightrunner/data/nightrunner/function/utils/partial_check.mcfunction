# Generated with MC-Build

summon marker ~ ~ ~ {Tags:["partial_check"]}
scoreboard players set #100 nightrunner.internal 100
# Slab check
execute if block ~ ~ ~ #minecraft:slabs as @e[type=marker,tag=partial_check] run function nightrunner:utils/partial_slab_check
# Stairs check
execute if block ~ ~ ~ #minecraft:stairs as @e[type=marker,tag=partial_check] run function nightrunner:utils/partial_stairs_check
# Door check
execute if block ~ ~ ~ #minecraft:doors as @e[type=marker,tag=partial_check] run function nightrunner:utils/partial_door_check
# Trapdoor check
execute if block ~ ~ ~ #minecraft:trapdoors as @e[type=marker,tag=partial_check] run function nightrunner:utils/partial_trapdoor_check
kill @e[type=marker,tag=partial_check,sort=nearest,limit=1]