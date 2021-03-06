scoreboard players set $activated bb.vm.var -1

execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 1 run function boomber:veinminer/veinmine/spread/coal_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 1 run function boomber:veinminer/veinmine/spread/deepslate_coal_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 2 run function boomber:veinminer/veinmine/spread/lapis_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 2 run function boomber:veinminer/veinmine/spread/deepslate_lapis_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 3 run function boomber:veinminer/veinmine/spread/iron_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 3 run function boomber:veinminer/veinmine/spread/deepslate_iron_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 4 run function boomber:veinminer/veinmine/spread/gold_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 4 run function boomber:veinminer/veinmine/spread/deepslate_gold_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 5 run function boomber:veinminer/veinmine/spread/redstone_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 5 run function boomber:veinminer/veinmine/spread/deepslate_redstone_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 6 run function boomber:veinminer/veinmine/spread/diamond_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 6 run function boomber:veinminer/veinmine/spread/deepslate_diamond_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 7 run function boomber:veinminer/veinmine/spread/emerald_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 7 run function boomber:veinminer/veinmine/spread/deepslate_emerald_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 8 run function boomber:veinminer/veinmine/spread/nether_quartz_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 9 run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 10 run function boomber:veinminer/veinmine/spread/nether_gold_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 11 run function boomber:veinminer/veinmine/spread/copper_ore
execute if score $activated bb.vm.var matches ..0 if score $ore_kind bb.vm.var matches 11 run function boomber:veinminer/veinmine/spread/deepslate_copper_ore

execute store result score #block_count bb.vm.var if entity @e[type=marker, tag=boomber.veinminer.miner]
execute as @e[type=experience_orb, limit=1, tag=!global.ignore, sort=nearest, nbt={Age: 0s}] store result score #xp_value bb.vm.var run data get entity @s Value
execute as @e[type=experience_orb, limit=1, tag=!global.ignore, sort=nearest, nbt={Age: 0s}] store result entity @s Value short 1 run scoreboard players operation #xp_value bb.vm.var *= #block_count bb.vm.var

execute at @e[type=marker, tag=boomber.veinminer.miner] if block ~ ~ ~ #boomber:veinminer/ore run function boomber:veinminer/miner/remove

kill @e[type=marker, tag=boomber.veinminer.miner]
