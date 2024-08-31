# Generated with MC-Build

# check if cooldown is active
execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1
# check if player has enough mana
execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..4999 run return run function nightrunner:items/tools/staffs/wooden/start_raycast/generated/0
# Reduce mana (not in creative mode)
scoreboard players remove @s[gamemode=!creative] Nightrunner_Mana 5000
# add cooldown
scoreboard players set @s Nightrunner_SpellCooldown 8
# Reset scoreboards
scoreboard players reset @s Nightrunner_Item_Ray_steps
scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps
# Ranged spell range
execute as @s run scoreboard players operation $Nightrunner Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRange
# if player wears lether armor add 5 to the range
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
# tell spell range
tellraw @s [{"text":"Spell range: ","color":"aqua"},{"score":{"name":"$Nightrunner","objective":"Nightrunner_RangedSpellRange"}}]
scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown
# play sound
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
# Raycast
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:items/tools/staffs/wooden/raycast
tag @s remove raycasting
# Returns score to "@s" "Nightrunner_Item_Ray_Return" base on hit: 1 entity, 2 block, 3 no hit
# scoreboard players set @s Nm_testing_wand_active 1