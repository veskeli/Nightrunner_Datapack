# Generated with MC-Build

# check if entitiy is iron golem
execute if entity @s[type=minecraft:iron_golem] run return run function nightrunner:items/tools/wands/iron/spell_damage/apply_spell_damage/generated/1
damage @s 6 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4
effect give @s slowness 1 1 true