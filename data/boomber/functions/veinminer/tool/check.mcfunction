execute store result score #bb.vm.damage bb.variable run data get entity @s SelectedItem.tag.Damage
scoreboard players add #bb.vm.damage bb.variable 1

function boomber:veinminer/tool/condition

execute if score #bb.vm.ignore bb.success matches 0 if score #bb.vm.tool_state bb.success matches -1 run function boomber:veinminer/tool/break
execute if score #bb.vm.ignore bb.success matches 0 if score #bb.vm.tool_state bb.success matches 1 run function boomber:veinminer/tool/apply_damage