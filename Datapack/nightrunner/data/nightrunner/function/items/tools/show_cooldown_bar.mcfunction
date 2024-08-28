# Generated with MC-Build

execute as @s[scores={Nightrunner_SpellCooldown=0}] run title @s actionbar ["",{"text":"====| ","color":"gold"},{"text":"Ready","color":"green"},{"text":" |====","color":"gold"}]
execute as @s[scores={Nightrunner_SpellCooldown=1..}] run title @s actionbar ["",{"text":"====| ","color":"gold"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"Nightrunner_SpellCooldown"}},{"text":" |====","color":"gold"}]