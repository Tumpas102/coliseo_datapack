
# Reducir cooldown si es mayor a 0
execute as @a[scores={runa=1}] run scoreboard players remove @s runa_timer1 1
execute as @a[scores={runa=4}] run scoreboard players remove @s runa_timer4 1
execute as @a[scores={runa=5}] run scoreboard players remove @s runa_timer5 1
execute as @a[scores={runa=10}] run scoreboard players remove @s runa_timer10 1
#Mensaje de q esta lista
execute as @a[scores={runa=1,runa_timer1=0}] run title @s actionbar {"text": "Runa Lista","color": "yellow"}
execute as @a[scores={runa=4,runa_timer4=0}] run title @s actionbar {"text": "Runa Lista","color": "red"}
execute as @a[scores={runa=5,runa_timer5=0}] run title @s actionbar {"text": "Runa Lista","color": "red"}
execute as @a[scores={runa=8,runa_timer8=0}] run title @s actionbar {"text": "Runa Lista","color": "blue"}
execute as @a[scores={runa=10,runa_timer10=0}] run title @s actionbar {"text": "Runa Lista","color": "green"}
# Activar runa si:
# tiene runa 1
# ha hecho daño
# cooldown es 0

#Defensa temprana
execute as @a[scores={runa=10, runa_timer10=1..}] run scoreboard players set @s damage_absorved 0
execute as @a[scores={runa=10, runa_timer10=..0,damage_absorved=0..}] run function coliseo:runas/defensa_temprana
#Ingnea Arcana
execute as @a[scores={runa=7}] run function coliseo:runas/ingnea_arcana
#Ancla runica
execute as @a[scores={player_in=1}] run scoreboard players set @s runeUse 0
execute as @a[scores={runeUse=1..,runa=8}] run function coliseo:runas/runa_trigger
execute as @a[scores={runa=8}] run scoreboard players remove @s runa_dilay8 1
execute as @a[scores={runa=8}] run scoreboard players remove @s runa_timer8 1
execute as @a[scores={runa=8,runa_timer8=0}] run give @s carrot_on_a_stick
scoreboard players set @a runeUse 0
execute as @e[type=chicken,tag=rune_anchor] run effect give @s invisibility 1 1 true
execute at @e[type=chicken,tag=rune_anchor] run particle portal ~ ~0.2 ~

#Verifica la Deuda
function coliseo:runas/deuda_verify


#Kits
function coliseo:kits/bloodthirsty_verify

execute as @a[scores={kit=6,kit_timer6=1..}] run scoreboard players remove @s kit_timer6 1

#Funcion Chanchito
execute as @e[tag=zona] run function coliseo:zona_functions/real_chanchito
