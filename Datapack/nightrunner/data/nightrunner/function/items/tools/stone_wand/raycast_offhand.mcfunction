# Generated with MC-Build

execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function nightrunner:items/tools/stone_wand/spell_damage
execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run return 1
execute unless block ~ ~ ~ #nightrunner:air run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
scoreboard players set #bool nightrunner.internal 0
execute positioned ^ ^ ^ rotated ~ ~ run execute if block ~ ~ ~ #nightrunner:partial run function nightrunner:utils/partial_check
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches -1 run function nightrunner:items/tools/stone_wand/hit_block
execute unless block ~ ~ ~ #nightrunner:air run return 2
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches ..0 run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches ..0 run return 3
execute if entity @a[sort=nearest,limit=1,tag=raycasting,distance=1..] run function nightrunner:items/tools/stone_wand/effect
scoreboard players remove $Nightrunner Nightrunner_Item_Ray_steps 1
execute positioned ^ ^ ^0.25 rotated ~ ~ run function nightrunner:items/tools/stone_wand/raycast_offhand