scoreboard players set @a[scores={is_deuda=0}] deuda 0
execute as @a[scores={is_deuda=1}] run effect give @s glowing 1 0
scoreboard players set @a[scores={is_deuda=1,deuda = 0}] deuda_timer 100

scoreboard players remove @a[scores={is_deuda=1,deuda = 1..}] deuda_timer 1

execute as @a[scores={is_deuda=1,deuda_timer = ..0}] run effect give @s wither 1 1
execute as @a[scores={is_deuda=1,deuda_timer = ..0}] run scoreboard players remove @s deuda 2

scoreboard players set @a[scores={is_deuda=1,deuda = ..0,deuda_timer = ..0}] is_deuda 0