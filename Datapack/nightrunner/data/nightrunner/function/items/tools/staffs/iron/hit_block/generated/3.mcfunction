# Generated with MC-Build

execute at @s run particle ominous_spawning ~ ~ ~ 0 0 0 1 100 normal
tag @s remove just_spawned
execute store result score @s Nightrunner_SentryID run scoreboard players get @a[limit=1,sort=nearest,tag=raycasting] Nightrunner_ID
execute as @a[limit=1,sort=nearest,tag=raycasting,gamemode=!creative] run scoreboard players operation @s Nightrunner_Mana -= $Nightrunner Nightrunner_Mana
# Reset Nightrunner Mana
scoreboard players reset $Nightrunner Nightrunner_Mana
scoreboard players set @s Nightrunner_SentryLifetime 20
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.7 0.2