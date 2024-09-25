# Generated with MC-Build

damage @s 5.5 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.1
effect give @s slowness 1 1 true
execute as @a[limit=1,tag=raycasting,sort=nearest,gamemode=!creative] run scoreboard players add @s Nightrunner_MagicSkillPoints 5