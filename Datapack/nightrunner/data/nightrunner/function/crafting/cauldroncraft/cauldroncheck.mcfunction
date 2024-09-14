# Generated with MC-Build

# TODO: dont use tick but use scoreboard trigger
execute as @e[type=item_frame,nbt={Tags:["forge_core"],Item:{}}] run function nightrunner:crafting/cauldroncraft/cauldron_check
# if Nightrunner_CauldronCraftingTimer entities exist lower the timer
execute as @e[type=interaction,nbt={Tags:["CauldronCraftInteractable"]},scores={Nightrunner_CauldronCraftingTimer=1..}] run scoreboard players remove @s Nightrunner_CauldronCraftingTimer 1
# if the timer is 0 then finish the craft
execute as @e[type=interaction,nbt={Tags:["CauldronCraftInteractable"]},scores={Nightrunner_CauldronCraftingTimer=..0}] run function nightrunner:crafting/cauldroncraft/finish_craft