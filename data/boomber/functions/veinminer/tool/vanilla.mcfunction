data merge storage lgd:storage {item: {}, result: {}}
	data modify storage lgd:storage item set from entity @s SelectedItem

	function lgd:v1/api/util/get_max_durability

	execute store result score #damage bb.vm.var run data get storage lgd:storage item.tag.Damage

	data modify storage lgd:storage result set from storage lgd:storage item
		execute store result storage lgd:storage result.tag.Damage int 1 run scoreboard players add #damage bb.vm.var 1

function boomber:veinminer/tool/apply_item