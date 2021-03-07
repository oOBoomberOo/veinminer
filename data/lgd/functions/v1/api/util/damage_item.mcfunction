#> lgd:v1/api/util/damage_item
# @api
#
# A shorthand function to call lgd:v1/util/damage_item_by_n with the $damage_amount of 1
#
# Input:
#  - [item] field in lgd:storage
#
# Output:
#  - [result] field in lgd:storage

scoreboard players set $damage_amount lgd.input 1
	function lgd:v1/api/util/damage_item_by_n