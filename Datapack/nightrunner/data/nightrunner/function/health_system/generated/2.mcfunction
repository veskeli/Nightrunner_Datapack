# Generated with MC-Build

# Check all player for correct id
execute as @a run execute if score @e[tag=interaction,sort=nearest,limit=1] Nightrunner_GraveID = @s Nightrunner_ID run function nightrunner:health_system/generated/3
execute as @a run say @s check