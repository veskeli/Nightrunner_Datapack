# Generated with MC-Build

# Check local position
execute if score .x nightrunner.internal matches ..25 run scoreboard players set #bool nightrunner.internal 1
# If bool is true then return
execute if score #bool nightrunner.internal matches 1 run return run scoreboard players set $Nightrunner Nightrunner_Item_Ray_steps -1