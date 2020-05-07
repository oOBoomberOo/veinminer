execute store result score #bb.vm.damage bb.vm.var run data get entity @s SelectedItem.tag.Damage
scoreboard players add #bb.vm.damage bb.vm.var 1

function boomber:veinminer/tool/condition

execute if score #bb.vm.ignore bb.vm.success matches 0 if score #bb.vm.tool_state bb.vm.success matches -1 run function boomber:veinminer/tool/break
execute if score #bb.vm.ignore bb.vm.success matches 0 if score #bb.vm.tool_state bb.vm.success matches 1 run function boomber:veinminer/tool/apply_damage