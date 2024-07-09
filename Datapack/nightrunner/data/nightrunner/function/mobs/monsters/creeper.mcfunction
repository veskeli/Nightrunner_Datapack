# Generated with MC-Build

execute as @e[type=creeper,tag=!Nightrunner,limit=1] run function nightrunner:mobs/monsters/data/creeper
# Fuse | explosion | movement speed
# Volatile (nuke)
# execute if predicate nightmare:10change run data_normal_creeper 35 8 0.2 Volatile Creeper
# Quickfuse (insta)
# execute if predicate nightmare:10change run data_normal_creeper 15 4 2 Quickfuse Creeper
# Creeping
# execute if predicate nightmare:10change run data_normal_creeper 35 3 0.3 Creeping Creeper
# Vanilla
# data merge entity @e[type=creeper,tag=!nightmare,limit=1] {ExplosionRadius:5,Tags:["nightmare"]}