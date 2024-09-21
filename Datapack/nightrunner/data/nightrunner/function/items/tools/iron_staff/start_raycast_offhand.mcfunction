# Generated with MC-Build

scoreboard players reset $Nightrunner Nightrunner_Mana
execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1
execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..1 run return run tellraw @s [{"text":"Not enough mana!","color":"red"}]
execute if score @s Nightrunner_SentryCooldown matches 1.. run return run tellraw @s [{"text":"⚠ ","color":"yellow","bold":true},{"text":"Sentry Cooldown: ","color":"red","bold":true,"italic":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"Nightrunner_SentryCooldown"},"color":"white","bold":true},{"text":"]","color":"gray"},{"text":" still active!","color":"red","italic":true}]
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2
scoreboard players set @s Nightrunner_SpellCooldown 8
scoreboard players reset @s Nightrunner_Item_Ray_steps
scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps
execute as @s run scoreboard players operation $Nightrunner Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRange
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange 15
tellraw @s [{"text":"Spell range: ","color":"aqua"},{"score":{"name":"$Nightrunner","objective":"Nightrunner_RangedSpellRange"}}]
scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:items/tools/iron_staff/raycast_offhand
tag @s remove raycasting
function nightrunner:items/tools/iron_staff/check_unbreaking
scoreboard players set $Nightrunner Nightrunner_Mana 2
scoreboard players reset $Nightrunner Nightrunner_Weak_Use