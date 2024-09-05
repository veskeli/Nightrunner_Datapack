# Generated with MC-Build

execute at @s run summon evoker_fangs ~ ~ ~ {Warmup:0}
execute as @e[type=evoker_fangs,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID