# Generated with MC-Build

execute as @e[type=block_display,tag=sentry] if score @s Nightrunner_SentryID = @a[limit=1,sort=nearest,tag=raycasting] Nightrunner_ID run kill @s
summon block_display ~ ~0.5 ~ {Tags:["sentry","just_spawned","Iron"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,0f,-0.35f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:calibrated_sculk_sensor"}}
execute as @e[type=block_display,tag=sentry,tag=just_spawned] run function nightrunner:items/tools/iron_staff/setup_spawned_sentry
function nightrunner:items/tools/iron_staff/check_mana
execute as @a[limit=1,tag=raycasting,sort=nearest,gamemode=!creative] run scoreboard players add @s Nightrunner_MagicSkillPoints 12
scoreboard players set @s[gamemode=survival] Nightrunner_SentryCooldown 600
scoreboard players reset $Nightrunner Nightrunner_Mana