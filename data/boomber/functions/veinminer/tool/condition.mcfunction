scoreboard players set #bb.vm.ignore bb.success 0

function boomber:veinminer/tool/durability_table

execute if score #bb.vm.damage bb.variable > #bb.vm.durability bb.variable run function boomber:veinminer/tool/condition/durability
execute if entity @s[nbt={SelectedItem: {tag: {Unbreakable: 1b}}}] run function boomber:veinminer/tool/condition/unbreakable
execute if entity @s[distance=10..] run function boomber:veinminer/tool/condition/distance