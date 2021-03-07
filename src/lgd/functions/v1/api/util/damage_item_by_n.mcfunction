#> lgd:v1/api/util/damage_item_by_n
# @api
# 
# Increase the damage of the given custom item by the specified amount and recalculate the "physical" damage to match the custom damage.
# 
# Input:
#  - [item] field in lgd:storage
#  - $damage_amount in [lgd.input] objective
#
# Output:
#  - [result] field in lgd:storage

#>
# @api
#declare score_holder $damage_amount

#>
# @private
#declare score_holder #virtual_damage

execute store result score #virtual_damage lgd.var run data get storage lgd:storage item.tag.ctc.tool.damage
	execute store result storage lgd:storage item.tag.ctc.tool.damage int 1 run scoreboard players operation #virtual_damage lgd.var -= $damage_amount lgd.input

function lgd:v1/api/durability/reflect_custom
	data modify storage lgd:storage result set from storage lgd:storage item
	execute store result storage lgd:storage result.tag.Damage int 1 run scoreboard players get $target_damage lgd.result

scoreboard players reset #virtual_damage lgd.var