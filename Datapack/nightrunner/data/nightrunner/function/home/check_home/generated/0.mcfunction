# Generated with MC-Build

execute unless entity @e[type=item,nbt={Item:{id:"minecraft:iron_block",count:1}},distance=..8,limit=1] run return 1
kill @e[type=item,nbt={Item:{id:"minecraft:iron_block",count:1}},distance=..8,limit=1]
# execute the home function
function nightrunner:home/set_home