# Generated with MC-Build

tag @s remove just_spawned
execute store result score @s Nightrunner_SentryID run scoreboard players get @p Nightrunner_ID
scoreboard players set @s Nightrunner_SentryLifetime 5
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.7 0.2