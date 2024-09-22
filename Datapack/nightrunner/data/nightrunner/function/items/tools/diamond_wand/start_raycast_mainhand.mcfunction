# Generated with MC-Build

scoreboard players reset $Nightrunner Nightrunner_Mana
execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1
execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..0 run scoreboard players set $Nightrunner Nightrunner_Weak_Use 1
execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..0 run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 1.5
execute if score @s[gamemode=!creative] Nightrunner_Mana matches 1.. run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
execute as @s[gamemode=creative] run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
scoreboard players set @s Nightrunner_SpellCooldown 8
scoreboard players reset @s Nightrunner_Item_Ray_steps
scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps
execute as @s run scoreboard players operation $Nightrunner Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRange
scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:items/tools/diamond_wand/raycast_mainhand
tag @s remove raycasting
function nightrunner:items/tools/diamond_wand/check_unbreaking
function nightrunner:items/tools/diamond_wand/check_mana
scoreboard players reset $Nightrunner Nightrunner_Weak_Use