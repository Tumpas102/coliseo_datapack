execute at @s run scoreboard players set @a[distance=0..5] player_in 1
execute at @s run scoreboard players set @a[distance=5..6] player_in 0
execute as @s run function coliseo:zona_functions/verify_players_in
function coliseo:zona_functions/particulas_chanchito


# Para conquistar chanchito
execute as @s[scores={players_count=1,estado_chanchito = 0,}] run scoreboard players add @s chanchito_conquista 1
execute as @s[scores={players_count=0,estado_chanchito = 0,chanchito_conquista=1..}] run scoreboard players remove @s chanchito_conquista 1
execute as @s[scores={players_count=2..,estado_chanchito = 0,chanchito_conquista=1..}] run scoreboard players remove @s chanchito_conquista 1

execute as @s[tag=zona1,scores={players_count=1,estado_chanchito = 0,chanchito_conquista= 200}] run scoreboard players set @p zona1 1
execute as @s[tag=zona2,scores={players_count=1,estado_chanchito = 0,chanchito_conquista= 200}] run scoreboard players set @p zona2 1
execute as @s[tag=zona3,scores={players_count=1,estado_chanchito = 0,chanchito_conquista= 200}] run scoreboard players set @p zona3 1
execute as @s[scores={players_count=1,estado_chanchito = 0,chanchito_conquista= 200}] run scoreboard players set @s estado_chanchito 1
#Para desconquistar chanchito
execute as @s[scores={players_count=0..,estado_chanchito = 1,chanchito_conquista = 1..},] at @s at @a[distance=0..5,scores={zona1 = 0}] run scoreboard players remove @s chanchito_conquista 2
execute as @s[tag =zona1,scores={players_count=0..,estado_chanchito = 1,chanchito_conquista = 0}] at @s at @a[distance=0..5,scores={zona1 = 0}] run scoreboard players set @a[scores={zona1=1}] zona1 0
execute as @s[tag =zona2,scores={players_count=0..,estado_chanchito = 1,chanchito_conquista = 0}] at @s at @a[distance=0..5,scores={zona1 = 0}] run scoreboard players set @a[scores={zona1=1}] zona2 0
execute as @s[tag =zona3,scores={players_count=0..,estado_chanchito = 1,chanchito_conquista = 0}] at @s at @a[distance=0..5,scores={zona1 = 0}] run scoreboard players set @a[scores={zona1=1}] zona3 0
execute as @s[scores={players_count=0..,estado_chanchito = 1,chanchito_conquista = 0}] at @s at @a[distance=0..5,scores={zona1 = 0}] run scoreboard players set @s estado_chanchito 0

#Funcion para los puntos
scoreboard players add @a[scores={zona1 = 1}] control_points 1
scoreboard players add @a[scores={zona2 = 1}] control_points 1
scoreboard players add @a[scores={zona3 = 1}] control_points 1

scoreboard players add @a[scores={control_points = 19..}] player_points 1
scoreboard players set @a[scores={control_points = 19..}] control_points 0