# Generated with MC-Build

scoreboard players reset $Nightrunner Nightrunner_Mana
execute as @s run execute if score @s Nightrunner_PearlWandWaitingForTeleport matches 1 run return run function nightrunner:items/tools/pearl_wand/spell_confirmation
execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1
execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..4 run return run tellraw @s [{"text":"Not enough mana!","color":"red"}]
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
scoreboard players set @s Nightrunner_SpellCooldown 12
scoreboard players reset @s Nightrunner_Item_Ray_steps
scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps
execute as @s run scoreboard players operation $Nightrunner Nightrunner_Item_Ray_steps = @s Nightrunner_RangedSpellRange
scoreboard players set #operation Nightrunner_Item_Ray_steps 3
scoreboard players operation $Nightrunner Nightrunner_Item_Ray_steps *= #operation Nightrunner_Item_Ray_steps
scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:items/tools/pearl_wand/raycast_offhand
tag @s remove raycasting
function nightrunner:items/tools/pearl_wand/check_unbreaking
scoreboard players set $Nightrunner Nightrunner_Mana 5
scoreboard players reset $Nightrunner Nightrunner_Weak_Use