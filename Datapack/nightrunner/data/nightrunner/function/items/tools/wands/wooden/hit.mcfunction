# Generated with MC-Build

execute as @s run effect give @s glowing 1 0 true
# Apply damage if the player has the wand in their hand
execute if entity @a[limit=1,tag=raycasting,sort=nearest] run function nightrunner:items/tools/wands/wooden/generated/2