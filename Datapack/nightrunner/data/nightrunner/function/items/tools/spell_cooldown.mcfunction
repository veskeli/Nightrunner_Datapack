# Generated with MC-Build

schedule function nightrunner:items/tools/spell_cooldown 0.1s replace
# Cool down the Nightrunner_SpellCooldown
execute as @a[scores={Nightrunner_SpellCooldown=1..}] run scoreboard players remove @s Nightrunner_SpellCooldown 1
# if the cooldown is 0 then play sound
execute as @a[scores={Nightrunner_SpellCooldown=1}] at @s run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1