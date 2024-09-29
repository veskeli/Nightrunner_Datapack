# Generated with MC-Build

scoreboard players add @s Nightrunner_PearlWandMarkerTimer 60
scoreboard players operation @s Nightrunner_PearlWandID = @a[sort=nearest,limit=1,tag=raycasting] Nightrunner_ID
scoreboard players set @a[sort=nearest,limit=1,tag=raycasting] Nightrunner_PearlWandWaitingForTeleport 1
# Pre play the particle effects (For immidiate feedback)
execute at @s run function nightrunner:items/tools/pearl_wand/particle_effects