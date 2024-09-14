# Generated with MC-Build

# Summon interaction
summon interaction ~ ~-0.5 ~ {width:0.75,height:0.75,response:0.75,Tags:["EnchantingTableCraftInteractable"]}
# Summon block display to show its existence
summon block_display ~-0.5 ~-1.25 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:respawn_anchor",Properties:{charges:"0"}},transformation:[0.8750f,0.0000f,0.0000f,0.0625f,0.0000f,0.8750f,0.0000f,0.1250f,0.0000f,0.0000f,0.8750f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["EnchantingTableCraftInteractable"]}]}
say Correct
# Kill the item frame
kill @s