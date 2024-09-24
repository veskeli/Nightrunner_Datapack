# Generated with MC-Build

execute unless block ~ ~ ~ #nightrunner:air run function nightrunner:items/tools/iron_staff/hit_block
execute positioned ^ ^ ^ rotated ~ ~ run execute if block ~ ~ ~ #nightrunner:partial run function nightrunner:utils/partial_check
execute unless block ~ ~ ~ #nightrunner:air run return 2
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches ..0 run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches ..0 run return 3
execute if entity @a[sort=nearest,limit=1,tag=raycasting,distance=1..] run function nightrunner:items/tools/iron_staff/effect
scoreboard players remove $Nightrunner Nightrunner_Item_Ray_steps 1
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/iron_staff/raycast_mainhand