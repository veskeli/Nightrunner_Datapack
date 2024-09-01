# Generated with MC-Build

say Weak spell
damage @s 0 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.1
effect give @s slowness 1 1 true