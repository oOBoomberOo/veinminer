#declare score_holder $damage
#declare score_holder $ignore
#declare score_holder $tool_state

execute store result score $damage bb.vm.var run data get entity @s SelectedItem.tag.Damage
scoreboard players add $damage bb.vm.var 1

function boomber:veinminer/tool/condition

execute if score $ignore bb.vm.var matches 0 if score $tool_state bb.vm.var matches -1 run function boomber:veinminer/tool/break
execute if score $ignore bb.vm.var matches 0 if score $tool_state bb.vm.var matches 1 run function boomber:veinminer/tool/apply_damage