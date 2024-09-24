# Generated with MC-Build

summon marker ~ ~ ~ {Tags:["partial_check"]}
execute if block ~ ~ ~ #minecraft:slabs as @e[type=marker,tag=partial_check] run function nightrunner:utils/generated/0
kill @e[type=marker,tag=partial_check,sort=nearest,limit=1]