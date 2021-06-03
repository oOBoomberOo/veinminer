scoreboard players set $ignore bb.vm.var 0

function boomber:veinminer/tool/durability_table

execute if score $damage bb.vm.var > $durability bb.vm.var run function boomber:veinminer/tool/condition/durability
execute if entity @s[nbt={SelectedItem: {tag: {Unbreakable: 1b}}}] run function boomber:veinminer/tool/condition/unbreakable
execute if entity @s[distance=10..] run function boomber:veinminer/tool/condition/distance