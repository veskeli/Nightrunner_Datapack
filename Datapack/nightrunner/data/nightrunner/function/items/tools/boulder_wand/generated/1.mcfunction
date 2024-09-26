# Generated with MC-Build

execute at @s[tag=!block_destroy] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobblestone
execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
kill @s