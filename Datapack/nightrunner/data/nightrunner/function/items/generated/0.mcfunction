# Generated with MC-Build

# reset mana xp
scoreboard players operation @s Nightrunner_ManaTemp += @s Nightrunner_ManaXP
# if we got mana/xp then give retaliation points to nearby players (if we stole someones mana)
scoreboard players set #2 Nightrunner_ManaTemp 3
scoreboard players operation .retaliation Nightrunner_ManaTemp = @s Nightrunner_ManaXP
scoreboard players operation .retaliation Nightrunner_ManaTemp /= #2 Nightrunner_ManaTemp
execute as @s at @s run execute as @a[distance=..35,scores={Nightrunner_MagicSkillLevel=20..}] run function nightrunner:items/generated/1
scoreboard players reset @s Nightrunner_ManaXP