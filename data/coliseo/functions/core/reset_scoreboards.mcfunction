# Reiniciar Chanchito
execute as @e[type=cow] run scoreboard players set @s estado_chanchito 0
execute as @e[type=cow] run scoreboard players set @s chanchito_conquista 0
scoreboard players set @a zona1 0
scoreboard players set @a zona2 0
scoreboard players set @a zona3 0
scoreboard players set @a player_points 0
scoreboard players set @a control_points 0
#Reiniciar y arrelgar runas
scoreboard players set @a runa_timer1 100
scoreboard players set @a runa_timer4 100
scoreboard players set @a runa_timer5 100
scoreboard players set @a runa_timer8 100
scoreboard players set @a runa_timer10 100
scoreboard players set @a runeState 0
scoreboard players set @a kit_timer6 0
scoreboard players set @a hit_count 0