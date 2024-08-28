# Generated with MC-Build

# check if cooldown is active
execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1
# add cooldown
scoreboard players set @s Nightrunner_SpellCooldown 16
# Reset scoreboards
scoreboard players reset @s Nightrunner_Item_Ray_steps
scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps
execute as @s run scoreboard players operation $Nightrunner Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRange
scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown
# play sound
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
# Raycast
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:items/tools/wands/golden/raycast
tag @s remove raycasting
# Returns score to "@s" "Nightrunner_Item_Ray_Return" base on hit: 1 entity, 2 block, 3 no hit
# scoreboard players set @s Nm_testing_wand_active 1