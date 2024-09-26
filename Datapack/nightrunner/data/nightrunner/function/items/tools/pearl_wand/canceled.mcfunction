# Generated with MC-Build

# $execute as @a[limit=1,scores={Nightrunner_ID=$(id)}] run tellraw @s {"text":"Teleportation canceled","color":"red"}
$execute as @a[limit=1,scores={Nightrunner_ID=$(id)}] run scoreboard players set @s Nightrunner_PearlWandWaitingForTeleport 0
$execute as @a[limit=1,scores={Nightrunner_ID=$(id)}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.6