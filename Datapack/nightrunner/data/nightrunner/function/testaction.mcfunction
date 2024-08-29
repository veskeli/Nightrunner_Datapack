# Generated with MC-Build

# set blocks at all sides to air
fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace
# print item ray steps
tellraw @s [{"text":"Item ray steps: ","color":"green"},{"score":{"name":"$Nightrunner","objective":"Nightrunner_Item_Ray_steps"}}]
# Reduce the item ray steps
scoreboard players remove $Nightrunner Nightrunner_Item_Ray_steps 1
# Check the item ray steps
execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 1.. run execute positioned ~ ~-1 ~ run function nightrunner:testaction