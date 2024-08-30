# Generated with MC-Build

scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps 35
tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function nightrunner:home/raycast
tag @s remove raycasting