#> lgd:v1/api/durability/reflect_custom
# @api
#
# Return the physical damage value of the item base on the custom durability value.
#
# Input:
#  - jgd:storage with [item] field
#
# Output:
#  - $target_damage in [lgd.result] objective
#
# Warning:
#  This function assumed that the given item is a tool with custom durability and *will not* return error if the item wasn't such tool.
#  Make sure that you verify this before passing it to the function.

#declare score_holder $target_damage

function lgd:v1/api/util/get_max_durability

#declare score_holder #max_durability
scoreboard players operation #max_durability lgd.var = $durability lgd.result

#declare score_holder #virtual_damage
execute store result score #virtual_damage lgd.var run data get storage lgd:storage item.tag.ctc.tool.damage
#declare score_holder #virtual_durability
execute store result score #virtual_durability lgd.var run data get storage lgd:storage item.tag.ctc.tool.durability

#declare score_holder #damage
scoreboard players operation #damage lgd.var = #virtual_damage lgd.var
	scoreboard players operation #damage lgd.var *= #const.scaling_factor lgd.var
	scoreboard players operation #damage lgd.var /= #virtual_durability lgd.var
	scoreboard players operation #damage lgd.var *= #max_durability lgd.var
	scoreboard players operation #damage lgd.var /= #const.scaling_factor lgd.var

scoreboard players operation $target_damage lgd.result = #damage lgd.var
	scoreboard players reset #max_durability lgd.var
	scoreboard players reset #damage lgd.var
	scoreboard players reset #virtual_damage lgd.var
	scoreboard players reset #virtual_durability lgd.var
	scoreboard players reset $durability lgd.result
