#declare storage boomber:veinminer

execute store result storage boomber:veinminer damage int 1 run scoreboard players get #bb.vm.damage bb.vm.var

item modify entity @s weapon.mainhand boomber:veinminer/take_damage