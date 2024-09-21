# Generated with MC-Build

# Teleport to closest grave macro
$execute as @s run tp @s @e[type=block_display,sort=nearest,limit=1,nbt={Tags:["Grave"]},scores={Nightrunner_GraveID=$(id)}]