# Generated with MC-Build

execute if predicate nightrunner:10change run execute as @e[type=zombie,tag=!Nightrunner,limit=1] run data merge entity @s {CanBreakDoors:1b,Tags:["Nightrunner"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31},{id:"minecraft:zombie.spawn_reinforcements",base:0.125}]}
execute as @e[type=zombie,tag=!Nightrunner,limit=1] run data merge entity @s {CustomName:'"test"',CanBreakDoors:1b,Tags:["Nightrunner"],attributes:[{id:"minecraft:generic.attack_damage",base:10},{id:"minecraft:generic.movement_speed",base:0.31},{id:"minecraft:zombie.spawn_reinforcements",base:0.125}]}
# Speedboy
# execute if predicate nightmare:10change run data_speedboy zombie 5 0.55 Quickstep Zombie
# Strongboy
# execute if predicate nightmare:10change run data_normal_named zombie 12 0.23 Sturdy Zombie
# Vanilla
# data_damage_speed zombie 9 0.31
# execute as @e[type=<%entity_type%>,tag=!Nightrunner,limit=1] run data merge entity @s {Attributes:[{Base:<%attack_damage%>,Name:"generic.attack_damage"},{Base:<%move_speed%>,Name:"generic.movement_speed"}], CanPickUpLoot:1b,Tags:["nightmare"], CustomName:'{"text":"<%entity_name%>"}',CustomNameVisible:0b}