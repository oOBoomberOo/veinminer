execute if score #bb.vm.mining_state bb.vm.success matches 1 run function boomber:veinminer/veinmine/spread/coal
execute if score #bb.vm.mining_state bb.vm.success matches 2 run function boomber:veinminer/veinmine/spread/lapis
execute if score #bb.vm.mining_state bb.vm.success matches 3 run function boomber:veinminer/veinmine/spread/iron
execute if score #bb.vm.mining_state bb.vm.success matches 4 run function boomber:veinminer/veinmine/spread/gold
execute if score #bb.vm.mining_state bb.vm.success matches 5 run function boomber:veinminer/veinmine/spread/redstone
execute if score #bb.vm.mining_state bb.vm.success matches 6 run function boomber:veinminer/veinmine/spread/diamond
execute if score #bb.vm.mining_state bb.vm.success matches 7 run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.mining_state bb.vm.success matches 8 run function boomber:veinminer/veinmine/spread/quartz
execute if score #bb.vm.mining_state bb.vm.success matches 9 run function boomber:veinminer/veinmine/spread/ancient_debris

execute store result score #bb.vm.count bb.vm.var if entity @e[type=area_effect_cloud, tag=boomber.veinminer.miner]
execute as @e[type=experience_orb, limit=1, tag=!global.ignore, sort=nearest, nbt={Age: 0s}] store result score #bb.vm.xp bb.vm.var run data get entity @s Value
execute as @e[type=experience_orb, limit=1, tag=!global.ignore, sort=nearest, nbt={Age: 0s}] store result entity @s Value short 1 run scoreboard players operation #bb.vm.xp bb.vm.var *= #bb.vm.count bb.vm.var

execute at @e[type=area_effect_cloud, tag=boomber.veinminer.miner] if block ~ ~ ~ #boomber:veinminer/ore run function boomber:veinminer/miner/suicide