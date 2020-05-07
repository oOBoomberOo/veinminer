scoreboard players set #bb.vm.ignore bb.vm.success 0

function boomber:veinminer/tool/durability_table

execute if score #bb.vm.damage bb.vm.var > #bb.vm.durability bb.vm.var run function boomber:veinminer/tool/condition/durability
execute if entity @s[nbt={SelectedItem: {tag: {Unbreakable: 1b}}}] run function boomber:veinminer/tool/condition/unbreakable
execute if entity @s[distance=10..] run function boomber:veinminer/tool/condition/distance