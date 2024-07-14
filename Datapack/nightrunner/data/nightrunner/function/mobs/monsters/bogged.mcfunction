# Generated with MC-Build

# execute store result score @s Nightrunner_MobDefiner run random value 1..100
execute store result score @e[type=bogged,tag=!Nightrunner,limit=1] Nightrunner_MobDefiner run random value 1..100
execute as @e[type=bogged,tag=!Nightrunner,limit=1] run function nightrunner:mobs/monsters/data/bogged