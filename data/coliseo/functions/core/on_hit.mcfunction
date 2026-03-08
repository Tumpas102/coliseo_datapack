

execute if score @s runa matches 1 if score @s runa_timer1 matches ..0 run function coliseo:runas/marcha_ligera
execute if score @s runa matches 4 if score @s runa_timer4 matches ..0 run function coliseo:runas/electrocutar

execute if score @s kit matches 6 run function coliseo:kits/bloodthirsty_count
execute if score @s runa matches 5 run function coliseo:runas/deuda_letal


advancement revoke @s only coliseo:hit_player