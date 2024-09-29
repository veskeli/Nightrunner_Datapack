# Generated with MC-Build

# Get position
execute store result score #x nightrunner.internal run data get entity @s Pos[0] 100
execute store result score .y nightrunner.internal run data get entity @s Pos[1] 100
execute store result score #z nightrunner.internal run data get entity @s Pos[2] 100
# Convert to local position
scoreboard players operation #x nightrunner.internal %= #100 nightrunner.internal
scoreboard players operation .y nightrunner.internal %= #100 nightrunner.internal
scoreboard players operation #z nightrunner.internal %= #100 nightrunner.internal
scoreboard players set #bool nightrunner.internal 0
# Rotation handler
scoreboard players operation .x nightrunner.internal = #x nightrunner.internal
scoreboard players operation .z nightrunner.internal = #z nightrunner.internal
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north] run function nightrunner:utils/rotate_90
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] run function nightrunner:utils/rotate_180
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] run function nightrunner:utils/rotate_270
# If open
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run return run function nightrunner:utils/partial_trapdoor_check/generated/0
# If top trapdoor
execute store result score .trapdoor nightrunner.internal if block ~ ~ ~ #minecraft:trapdoors[half=bottom]
# If the block is a bottom slab
execute if score .trapdoor nightrunner.internal matches 1 if score .y nightrunner.internal matches ..20 run return run function nightrunner:utils/partial_trapdoor_check/generated/1
# If the block is a top slab
execute if score .trapdoor nightrunner.internal matches 0 if score .y nightrunner.internal matches 80.. run return run function nightrunner:utils/partial_trapdoor_check/generated/2