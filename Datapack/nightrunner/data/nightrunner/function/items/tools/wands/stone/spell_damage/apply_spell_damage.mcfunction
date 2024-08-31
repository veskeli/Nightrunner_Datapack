# Generated with MC-Build

# check if entitiy is iron golem
execute if entity @s[type=minecraft:iron_golem] run return run function nightrunner:items/tools/wands/stone/spell_damage/apply_spell_damage/generated/1
# If no mana was used, reduce damage
execute if score $Nightrunner Nightrunner_Weak_Use matches 1 run return run function nightrunner:items/tools/wands/stone/spell_damage/apply_spell_damage/generated/2
# Deal damage
damage @s 5 minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]
playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4
effect give @s slowness 1 1 true