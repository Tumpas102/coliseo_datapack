#Reinicio good
function coliseo:core/reset_scoreboards

#Crear "scoreboards"
#1.- Marcha Ligera
scoreboard objectives add runa dummy
scoreboard objectives add runa_timer1 dummy

#4.- Electrocutar
scoreboard objectives add runa_timer4 dummy
#5.- Deuda Letal
scoreboard objectives add runa_timer5 dummy
scoreboard objectives add deuda minecraft.custom:minecraft.damage_taken
scoreboard objectives add is_deuda dummy
scoreboard objectives add deuda_timer dummy
#8 Ancla rúnica
scoreboard objectives add runa_timer8 dummy
scoreboard objectives add runeUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add runeState dummy
scoreboard objectives add runa_dilay8 dummy

#10. Defensa temprana
scoreboard objectives add runa_timer10 dummy

#Kits
scoreboard objectives add kit dummy

#BloodThirsy
scoreboard objectives add kit_timer6 dummy
scoreboard objectives add hit_count dummy
scoreboard objectives add hit_dilay dummy
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add hambre food
scoreboard objectives add damage_absorved minecraft.custom:minecraft.damage_taken
#Debug bloodThirsty
scoreboard players add @a kit_timer6 0

#Estado del juego
scoreboard objectives add game_state dummy
scoreboard players set #game game_state 2

#Debug runas
scoreboard players add @a runa_timer1 0
scoreboard players add @a runa_timer4 0

#Crear variables para la zona chanchito
scoreboard objectives add players_count dummy
scoreboard objectives add player_points dummy
scoreboard objectives add chanchito_conquista dummy
scoreboard objectives add player_in dummy
scoreboard objectives add estado_chanchito dummy
scoreboard objectives add zona1 dummy
scoreboard objectives add zona2 dummy
scoreboard objectives add zona3 dummy
scoreboard objectives add control_points dummy