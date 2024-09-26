# Generated with MC-Build

execute at @s run tp @a[tag=teleporting,gamemode=creative,limit=1] ~ ~-1 ~0.5
execute at @s run execute if score @a[tag=teleporting,gamemode=survival,limit=1] Nightrunner_Mana matches 5.. run tp @a[tag=teleporting,limit=1] ~ ~-1 ~0.5
execute if score @a[tag=teleporting,gamemode=survival,limit=1] Nightrunner_Mana matches 5.. run playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 1
execute if score @a[tag=teleporting,gamemode=survival,limit=1] Nightrunner_Mana matches 5.. run scoreboard players remove @a[tag=teleporting,limit=1] Nightrunner_Mana 5
execute unless score @a[tag=teleporting,gamemode=survival,limit=1] Nightrunner_Mana matches 5.. run tellraw @a[tag=teleporting,limit=1] {"text":"Not enough mana","color":"red"}
execute at @s run playsound minecraft:entity.player.teleport master @a ~ ~-1 ~0.5 1 1
kill @s