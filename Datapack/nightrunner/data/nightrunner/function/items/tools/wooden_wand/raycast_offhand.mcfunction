# Generated with MC-Build

execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function nightrunner:items/tools/wooden_wand/spell_damage
execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run return 1
execute unless block ~ ~ ~ #nightrunner:air run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
execute unless block ~ ~ ~ #nightrunner:air run return 2
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run return 3
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 15.. run function nightrunner:items/tools/wooden_wand/effect
scoreboard players add $Nightrunner Nightrunner_Item_Ray_steps 1
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/wooden_wand/raycast_offhand