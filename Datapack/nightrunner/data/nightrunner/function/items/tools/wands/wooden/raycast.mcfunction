# Generated with MC-Build

# If hit entity
execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function nightrunner:items/tools/wands/wooden/hit
execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run return 1
# If hit block
execute unless block ~ ~ ~ #nightrunner:air run function nightrunner:items/tools/wands/wooden/raycast/generated/0
execute unless block ~ ~ ~ #nightrunner:air run return 2
# If too many steps (is equal or more then $Nightrunner Nightrunner_RangedSpellRange score)
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run function nightrunner:items/tools/wands/wooden/raycast/generated/1
execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run return 3
# particle effect
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 15.. run function nightrunner:items/tools/wands/wooden/raycast/effect
# Update steps
scoreboard players add $Nightrunner Nightrunner_Item_Ray_steps 1
# Loop
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/wands/wooden/raycast