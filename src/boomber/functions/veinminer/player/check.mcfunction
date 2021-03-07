
#>
# @api
#declare score_holder #material_type

scoreboard players set #material_type bb.vm.success 0
	execute as @e[type=item, nbt={Age: 0s}, tag=!global.ignore, tag=!global.ignore.pos, tag=!boomber.veinminer.ignore, distance=..1] run function boomber:veinminer/ore/ore_table

execute if score #material_type bb.vm.success matches 1.. run function boomber:veinminer/player/found
execute if score #material_type bb.vm.success matches 0 run tag @e[type=item, nbt={Age: 0s}, tag=!global.ignore, tag=!global.ignore.pos, tag=!boomber.veinminer.ignore, distance=..1] add boomber.veinminer.ignore