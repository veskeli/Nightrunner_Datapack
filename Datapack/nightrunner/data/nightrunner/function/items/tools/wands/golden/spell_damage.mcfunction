# Generated with MC-Build

# Apply damage if the player has the wand in their hand
execute if entity @a[limit=1,tag=raycasting,sort=nearest] run function nightrunner:items/tools/wands/golden/spell_damage/apply_spell_damage