scoreboard players set $tool_state bb.vm.var 1

function boomber:veinminer/miner/new
execute if block ~ ~ ~ minecraft:ancient_debris run function boomber:veinminer/tool/check

execute if score $tool_state bb.vm.var matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $tool_state bb.vm.var matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris
execute if score $tool_state bb.vm.var matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:ancient_debris unless entity @e[type=marker, tag=boomber.veinminer.miner, distance=..0.3] run function boomber:veinminer/veinmine/spread/ancient_debris