# Generated with MC-Build

execute unless block ~ ~ ~ #nightrunner:air run function nightrunner:items/tools/staffs/golden/hit_block
execute unless block ~ ~ ~ #nightrunner:air run return 2
#
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run function nightrunner:items/tools/staffs/golden/raycast/generated/0
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run return 3
# particle effect
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 15.. run function nightrunner:items/tools/staffs/golden/raycast/effect
# Update steps
scoreboard players add $Nightrunner Nightrunner_Item_Ray_steps 1
# Loop
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/staffs/golden/raycast