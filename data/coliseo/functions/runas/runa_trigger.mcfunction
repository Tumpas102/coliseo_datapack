# Si no tiene ancla → crear
execute as @s[scores={player_in=1}] run scoreboard players set @s runeUse 0
execute if score @s[scores={runa_dilay8=..0}] runeState matches 0 run function coliseo:runas/crear_ancla

# Si ya tiene ancla → volver
execute if score @s[scores={runa_dilay8=..0}] runeState matches 1 run function coliseo:runas/ir_ancla

