# Generated with MC-Build

# add a level
scoreboard players add @s Nightrunner_MiningSkillLevel 1
# reset the points
scoreboard players reset @s Nightrunner_MiningSkillPoints
# play level up sound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 0.8
# update the player attributes
execute as @s run function nightrunner:skills/mining_skill/set_mining_skill_attributes
# show level up message
tellraw @s [{"text":"Mining Skill Leveled Up! ","color":"green","bold":true,"italic":true},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"}},{"text":"]","color":"yellow"}]
# broadcast the mining skill
scoreboard players operation @s Nightrunner_MiningLevelModulus = @s Nightrunner_MiningSkillLevel
scoreboard players set $Nightrunner Nightrunner_MiningLevelModulus 5
scoreboard players operation @s Nightrunner_MiningLevelModulus %= $Nightrunner Nightrunner_MiningLevelModulus
#execute if score @s Nightrunner_MiningLevelModulus matches 0 run tag @s add broadcaster
execute if score @s Nightrunner_MiningLevelModulus matches 0 run tellraw @a[tag=!broadcaster] [{"selector":"@s"},{"text":" has leveled up their Mining Skill! Now at ","color":"green"},{"text":"[Lvl ","color":"yellow"},{"score":{"name":"@s","objective":"Nightrunner_MiningSkillLevel"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute if score @s Nightrunner_MiningLevelModulus matches 0 run tag @s remove broadcaster