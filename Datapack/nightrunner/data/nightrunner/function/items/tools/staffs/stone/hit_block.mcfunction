# Generated with MC-Build

# Kill other sentries with the same ID
execute as @e[type=block_display,tag=sentry] if score @s Nightrunner_SentryID = @a[limit=1,sort=nearest,tag=raycasting] Nightrunner_ID run kill @s
# summon sentry
summon block_display ~-0.35 ~1 ~-0.35 {Tags:["sentry","just_spawned","Stone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:calibrated_sculk_sensor"}}
# find just spawned sentry
execute as @e[type=block_display,tag=sentry,tag=just_spawned] run function nightrunner:items/tools/staffs/stone/hit_block/generated/2