# Generated with MC-Build

# Kill graves
$kill @e[type=block_display,nbt={Tags:["Grave"]},scores={Nightrunner_GraveID=$(id)}]
# Kill interactables
$kill @e[type=interaction,nbt={Tags:["GraveInteractable"]},scores={Nightrunner_GraveID=$(id)}]