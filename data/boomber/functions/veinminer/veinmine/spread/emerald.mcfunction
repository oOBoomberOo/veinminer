scoreboard players set #bb.vm.tool_state bb.vm.success 1

function boomber:veinminer/miner/born
execute if block ~ ~ ~ minecraft:emerald_ore run function boomber:veinminer/tool/check

execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald
execute if score #bb.vm.tool_state bb.vm.success matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:emerald_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/emerald