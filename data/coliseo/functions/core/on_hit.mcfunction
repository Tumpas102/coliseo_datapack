execute if score #game game_state matches 2
execute as @a[scores={runa=1, runa_timer1=..0}] run function coliseo:runas/marcha_ligera
execute as @a[scores={runa=4, runa_timer4=..0}] run function coliseo:runas/electrocutar


#BloodThirsty
execute as @a[scores={kit=6}] run function coliseo:kits/bloodthirsty_count

#Deuda letal
execute as @a[scores={kit=5}] run function coliseo:runas/deuda_letal
advancement revoke @s only coliseo:hit_player