# Generated with MC-Build

# Get position
execute store result score #x nightrunner.internal run data get entity @s Pos[0] 100
execute store result score #z nightrunner.internal run data get entity @s Pos[2] 100
# Convert to local position
scoreboard players operation #x nightrunner.internal %= #100 nightrunner.internal
scoreboard players operation #z nightrunner.internal %= #100 nightrunner.internal
scoreboard players set #bool nightrunner.internal 0
# Rotation handler
scoreboard players operation .x nightrunner.internal = #x nightrunner.internal
scoreboard players operation .z nightrunner.internal = #z nightrunner.internal
execute if block ~ ~ ~ #minecraft:doors[facing=north] run function nightrunner:utils/rotate_90
execute if block ~ ~ ~ #minecraft:doors[facing=west] run function nightrunner:utils/rotate_180
execute if block ~ ~ ~ #minecraft:doors[facing=south] run function nightrunner:utils/rotate_270
execute if block ~ ~ ~ #minecraft:doors[hinge=left,open=true] if score .z nightrunner.internal matches ..25 run scoreboard players set #bool nightrunner.internal 1
execute if block ~ ~ ~ #minecraft:doors[hinge=right,open=true] if score .z nightrunner.internal matches 75.. run scoreboard players set #bool nightrunner.internal 1
execute if block ~ ~ ~ #minecraft:doors[open=false] if score .x nightrunner.internal matches ..25 run scoreboard players set #bool nightrunner.internal 1
execute if score #bool nightrunner.internal matches 1 run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps -1