# Generated with MC-Build

summon block_display ~ ~1 ~ {Tags:["sentry","just_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:calibrated_sculk_sensor"}}
# find just spawned sentry
execute as @e[type=block_display,tag=sentry,tag=just_spawned] run function nightrunner:items/tools/staffs/wooden/generated/2