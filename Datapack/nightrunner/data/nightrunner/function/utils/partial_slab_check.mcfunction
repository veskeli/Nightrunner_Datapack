# Generated with MC-Build

# If double slab then return
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps 0
execute store result score .y nightrunner.internal run data get entity @s Pos[1] 100
scoreboard players operation .y nightrunner.internal %= #100 nightrunner.internal
# If the block is a top slab
execute store result score .slab nightrunner.internal if block ~ ~ ~ #minecraft:slabs[type=bottom]
# If the block is a bottom slab
execute if score .slab nightrunner.internal matches 1 if score .y nightrunner.internal matches ..50 run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps 0
# If the block is a top slab
execute if score .slab nightrunner.internal matches 0 if score .y nightrunner.internal matches 49.. run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps 0