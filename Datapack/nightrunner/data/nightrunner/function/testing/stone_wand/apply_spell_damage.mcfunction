# Generated with MC-Build

execute if entity @s[type=minecraft:iron_golem] run return run function nightrunner:testing/stone_wand/apply_spell_damage/generated/0
execute if score $Nightrunner Nightrunner_Weak_Use matches 1 run return run function nightrunner:testing/stone_wand/apply_spell_damage/generated/1
damage @s 5 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4
effect give @s slowness 1 1 true