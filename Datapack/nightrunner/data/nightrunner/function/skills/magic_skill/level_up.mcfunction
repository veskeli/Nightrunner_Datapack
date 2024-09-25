# Generated with MC-Build

# add a level
scoreboard players add @s Nightrunner_MagicSkillLevel 1
# reset the points
scoreboard players reset @s Nightrunner_MagicSkillPoints
# reset the last update points
scoreboard players set @s Nightrunner_MagicSkillPointsLastUpdate 0
# play level up sound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 0.8
# show level up message
tellraw @s [{"text":"✨ Magic Skill Leveled Up! ","color":"light_purple","bold":true,"italic":true},{"text":"[Lvl ","color":"aqua"},{"score":{"name":"@s","objective":"Nightrunner_MagicSkillLevel"}},{"text":"]","color":"aqua"}]
# broadcast the magic skill
scoreboard players operation @s Nightrunner_MagicLevelModulus = @s Nightrunner_MagicSkillLevel
scoreboard players set $Nightrunner Nightrunner_MagicLevelModulus 5
scoreboard players operation @s Nightrunner_MagicLevelModulus %= $Nightrunner Nightrunner_MagicLevelModulus
execute if score @s Nightrunner_MagicLevelModulus matches 0 run tag @s add broadcaster
execute if score @s Nightrunner_MagicLevelModulus matches 0 run tellraw @a[tag=!broadcaster] [{"selector":"@s"},{"text":" has leveled up their Magic Skill! Now at ","color":"green"},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MagicSkillLevel"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute if score @s Nightrunner_MagicLevelModulus matches 0 run tag @s remove broadcaster
# Milestone lvl 20
execute if score @s Nightrunner_MagicSkillLevel matches 20 run function nightrunner:skills/magic_skill/generated/2