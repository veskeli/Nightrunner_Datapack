# Generated with MC-Build

execute at @s run summon evoker_fangs ~ ~ ~ {Warmup:0}
# execute at @s run execute as @a run execute if score @s Nightrunner_ID = @e[tag=sentry,sort=nearest,limit=1] Nightrunner_SentryID run data modify entity @e[tag=sentry,sort=nearest,limit=1] Owner set from entity @s UUID
# TODO: set owner to be correct player (Currently its closest player)
execute as @e[type=evoker_fangs,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID