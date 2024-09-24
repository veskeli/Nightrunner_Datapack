# Generated with MC-Build

execute if entity @s[type=minecraft:iron_golem] run return run function nightrunner:items/tools/wooden_wand/apply_spell_damage/generated/0
execute if score $Nightrunner Nightrunner_Weak_Use matches 1 run return run function nightrunner:items/tools/wooden_wand/apply_spell_damage/generated/1
tag @s add DamagedEntity
damage @s 4 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
execute if entity @s[nbt={Health:0.0f}] run execute as @a[limit=1,tag=raycasting,sort=nearest] run function nightrunner:items/add_mana {"amount":1}
execute if entity @s[nbt={Health:0.0f}] run execute as @a[limit=1,tag=raycasting,sort=nearest] run execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.1 2
tag @s remove DamagedEntity
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4
effect give @s slowness 1 1 true