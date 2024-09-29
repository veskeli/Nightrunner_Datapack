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
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function nightrunner:utils/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function nightrunner:utils/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function nightrunner:utils/rotate_270
# Shape = straight
execute if score .x nightrunner.internal matches 55.. run scoreboard players set #bool nightrunner.internal 1
# Shapes
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z nightrunner.internal matches ..45 run scoreboard players set #bool nightrunner.internal 1
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z nightrunner.internal matches 55.. run scoreboard players set #bool nightrunner.internal 1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z nightrunner.internal matches 45.. run scoreboard players set #bool nightrunner.internal 0
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z nightrunner.internal matches ..55 run scoreboard players set #bool nightrunner.internal 0
# Bottom step
execute store result score #type nighrunner.internal if block ~ ~ ~ #minecraft:stairs[half=bottom]
execute if score #type nighrunner.internal matches 1 if score .y nightrunner.internal matches ..55 run scoreboard players set #bool nightrunner.internal 1
execute if score #type nighrunner.internal matches 0 if score .y nightrunner.internal matches 45.. run scoreboard players set #bool nightrunner.internal 1
execute if score #bool nightrunner.internal matches 1 run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps -1