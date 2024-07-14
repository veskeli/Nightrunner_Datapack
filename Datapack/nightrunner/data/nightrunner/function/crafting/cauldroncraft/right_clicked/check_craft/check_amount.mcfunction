# Generated with MC-Build

# Store the amount of rotten flesh in hand
execute as @s run execute store result score @s Nightrunner_CauldronCraftableAmountInHand run data get entity @s SelectedItem.count
# if the amount is more then 16 we can continue
execute if score @s Nightrunner_CauldronCraftableAmountInHand matches 16.. run function nightrunner:crafting/cauldroncraft/right_clicked/check_craft/check_amount/amount_exceeded