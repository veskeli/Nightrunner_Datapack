# Generated with MC-Build

execute unless block ~ ~ ~ #nightrunner:air run return run function nightrunner:home/hit_block
# Update steps
scoreboard players remove $Nightrunner Nightrunner_Item_Ray_steps 1
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches ..0 run return 3
# Loop
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:home/raycast