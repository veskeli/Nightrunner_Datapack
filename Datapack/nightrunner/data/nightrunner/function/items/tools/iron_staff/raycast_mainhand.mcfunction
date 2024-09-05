# Generated with MC-Build

execute unless block ~ ~ ~ #nightrunner:air run function nightrunner:items/tools/iron_staff/hit_block
execute unless block ~ ~ ~ #nightrunner:air run return 2
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run return 3
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 15.. run function nightrunner:items/tools/iron_staff/effect
scoreboard players add $Nightrunner Nightrunner_Item_Ray_steps 1
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/iron_staff/raycast_mainhand