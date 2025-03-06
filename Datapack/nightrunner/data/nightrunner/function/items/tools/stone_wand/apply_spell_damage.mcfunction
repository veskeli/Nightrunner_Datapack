# Generated with MC-Build

execute if entity @s[type=minecraft:iron_golem] run return run function nightrunner:items/tools/stone_wand/apply_spell_damage/generated/0
execute if score $Nightrunner Nightrunner_Weak_Use matches 1 run return run function nightrunner:items/tools/stone_wand/apply_spell_damage/generated/1
execute as @a[limit=1,tag=raycasting,sort=nearest,gamemode=!creative] run scoreboard players add @s Nightrunner_MagicSkillPoints 5
damage @s 5 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
execute if entity @s[nbt={Health:0.0f}] run execute as @a[limit=1,tag=raycasting,sort=nearest] run function nightrunner:items/tools/stone_wand/apply_spell_damage/entity_died_from_damage
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4
effect give @s slowness 1 1 true
execute if score @a[limit=1,tag=raycasting,sort=nearest] Nightrunner_MagicSkillLevel matches 50.. run effect give @s slowness 2 1 true