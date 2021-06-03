scoreboard players set $tool_state bb.vm.var 1

function boomber:veinminer/miner/new
execute if block ~ ~ ~ minecraft:coal_ore run function boomber:veinminer/tool/check

execute if score $tool_state bb.vm.var matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal
execute if score $tool_state bb.vm.var matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:coal_ore unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/coal