data modify storage lgd:storage item set from storage lgd:storage result
	function lgd:v1/api/util/get_max_durability
	execute store result score #damage bb.vm.var run data get storage lgd:storage item.tag.Damage

execute if score #damage bb.vm.var > $durability lgd.result run function boomber:veinminer/tool/break
execute unless score #damage bb.vm.var > $durability lgd.result run function boomber:veinminer/tool/apply_damage
