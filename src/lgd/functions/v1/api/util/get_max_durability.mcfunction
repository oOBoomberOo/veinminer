#> lgd:v1/api/util/get_max_durability
# @api
#
# Return the maximum durability of the given item into a scoreboard.
#
# Input:
#  - lgd:storage with [item] field
#
# Output:
#  - $durability in [lgd.result] objective
#
# The function can return the following errors:
#   0 => if the input item was not recognized by the pack. (likely modded item or item with no durability)
#  -1 => if the required input was not provided.
# 

#>
# @api
#declare score_holder $durability

scoreboard players set $durability lgd.result 0
	execute unless data storage lgd:storage item.id run scoreboard players set $durability lgd.result -1
	execute if data storage lgd:storage item{id: "minecraft:golden_sword"} run scoreboard players set $durability lgd.result 32
		execute if data storage lgd:storage item{id: "minecraft:golden_pickaxe"} run scoreboard players set $durability lgd.result 32
		execute if data storage lgd:storage item{id: "minecraft:golden_axe"} run scoreboard players set $durability lgd.result 32
		execute if data storage lgd:storage item{id: "minecraft:golden_shovel"} run scoreboard players set $durability lgd.result 32
		execute if data storage lgd:storage item{id: "minecraft:golden_hoe"} run scoreboard players set $durability lgd.result 32
	execute if data storage lgd:storage item{id: "minecraft:wooden_sword"} run scoreboard players set $durability lgd.result 59
		execute if data storage lgd:storage item{id: "minecraft:wooden_pickaxe"} run scoreboard players set $durability lgd.result 59
		execute if data storage lgd:storage item{id: "minecraft:wooden_axe"} run scoreboard players set $durability lgd.result 59
		execute if data storage lgd:storage item{id: "minecraft:wooden_shovel"} run scoreboard players set $durability lgd.result 59
		execute if data storage lgd:storage item{id: "minecraft:wooden_hoe"} run scoreboard players set $durability lgd.result 59
	execute if data storage lgd:storage item{id: "minecraft:stone_sword"} run scoreboard players set $durability lgd.result 131
		execute if data storage lgd:storage item{id: "minecraft:stone_pickaxe"} run scoreboard players set $durability lgd.result 131
		execute if data storage lgd:storage item{id: "minecraft:stone_axe"} run scoreboard players set $durability lgd.result 131
		execute if data storage lgd:storage item{id: "minecraft:stone_shovel"} run scoreboard players set $durability lgd.result 131
		execute if data storage lgd:storage item{id: "minecraft:stone_hoe"} run scoreboard players set $durability lgd.result 131
	execute if data storage lgd:storage item{id: "minecraft:iron_sword"} run scoreboard players set $durability lgd.result 250
		execute if data storage lgd:storage item{id: "minecraft:iron_pickaxe"} run scoreboard players set $durability lgd.result 250
		execute if data storage lgd:storage item{id: "minecraft:iron_axe"} run scoreboard players set $durability lgd.result 250
		execute if data storage lgd:storage item{id: "minecraft:iron_shovel"} run scoreboard players set $durability lgd.result 250
		execute if data storage lgd:storage item{id: "minecraft:iron_hoe"} run scoreboard players set $durability lgd.result 250
	execute if data storage lgd:storage item{id: "minecraft:diamond_sword"} run scoreboard players set $durability lgd.result 1561
		execute if data storage lgd:storage item{id: "minecraft:diamond_pickaxe"} run scoreboard players set $durability lgd.result 1561
		execute if data storage lgd:storage item{id: "minecraft:diamond_axe"} run scoreboard players set $durability lgd.result 1561
		execute if data storage lgd:storage item{id: "minecraft:diamond_shovel"} run scoreboard players set $durability lgd.result 1561
		execute if data storage lgd:storage item{id: "minecraft:diamond_hoe"} run scoreboard players set $durability lgd.result 1561
	execute if data storage lgd:storage item{id: "minecraft:netherite_sword"} run scoreboard players set $durability lgd.result 2031
		execute if data storage lgd:storage item{id: "minecraft:netherite_pickaxe"} run scoreboard players set $durability lgd.result 2031
		execute if data storage lgd:storage item{id: "minecraft:netherite_axe"} run scoreboard players set $durability lgd.result 2031
		execute if data storage lgd:storage item{id: "minecraft:netherite_shovel"} run scoreboard players set $durability lgd.result 2031
		execute if data storage lgd:storage item{id: "minecraft:netherite_hoe"} run scoreboard players set $durability lgd.result 2031
	execute if data storage lgd:storage item{id: "minecraft:leather_helmet"} run scoreboard players set $durability lgd.result 55
		execute if data storage lgd:storage item{id: "minecraft:leather_chestplate"} run scoreboard players set $durability lgd.result 80
		execute if data storage lgd:storage item{id: "minecraft:leather_leggings"} run scoreboard players set $durability lgd.result 75
		execute if data storage lgd:storage item{id: "minecraft:leather_boots"} run scoreboard players set $durability lgd.result 65
	execute if data storage lgd:storage item{id: "minecraft:golden_helmet"} run scoreboard players set $durability lgd.result 77
		execute if data storage lgd:storage item{id: "minecraft:golden_chestplate"} run scoreboard players set $durability lgd.result 112
		execute if data storage lgd:storage item{id: "minecraft:golden_leggings"} run scoreboard players set $durability lgd.result 105
		execute if data storage lgd:storage item{id: "minecraft:golden_boots"} run scoreboard players set $durability lgd.result 91
	execute if data storage lgd:storage item{id: "minecraft:chainmail_helmet"} run scoreboard players set $durability lgd.result 165
		execute if data storage lgd:storage item{id: "minecraft:chainmail_chestplate"} run scoreboard players set $durability lgd.result 240
		execute if data storage lgd:storage item{id: "minecraft:chainmail_leggings"} run scoreboard players set $durability lgd.result 225
		execute if data storage lgd:storage item{id: "minecraft:chainmail_boots"} run scoreboard players set $durability lgd.result 195
	execute if data storage lgd:storage item{id: "minecraft:iron_helmet"} run scoreboard players set $durability lgd.result 165
		execute if data storage lgd:storage item{id: "minecraft:iron_chestplate"} run scoreboard players set $durability lgd.result 240
		execute if data storage lgd:storage item{id: "minecraft:iron_leggings"} run scoreboard players set $durability lgd.result 225
		execute if data storage lgd:storage item{id: "minecraft:iron_boots"} run scoreboard players set $durability lgd.result 195
	execute if data storage lgd:storage item{id: "minecraft:diamond_helmet"} run scoreboard players set $durability lgd.result 363
		execute if data storage lgd:storage item{id: "minecraft:diamond_chestplate"} run scoreboard players set $durability lgd.result 528
		execute if data storage lgd:storage item{id: "minecraft:diamond_leggings"} run scoreboard players set $durability lgd.result 495
		execute if data storage lgd:storage item{id: "minecraft:diamond_boots"} run scoreboard players set $durability lgd.result 429
	execute if data storage lgd:storage item{id: "minecraft:netherite_helmet"} run scoreboard players set $durability lgd.result 407
		execute if data storage lgd:storage item{id: "minecraft:netherite_chestplate"} run scoreboard players set $durability lgd.result 592
		execute if data storage lgd:storage item{id: "minecraft:netherite_leggings"} run scoreboard players set $durability lgd.result 555
		execute if data storage lgd:storage item{id: "minecraft:netherite_boots"} run scoreboard players set $durability lgd.result 481
	execute if data storage lgd:storage item{id: "minecraft:turtle_shell"} run scoreboard players set $durability lgd.result 275
	execute if data storage lgd:storage item{id: "minecraft:fishing_rod"} run scoreboard players set $durability lgd.result 64
	execute if data storage lgd:storage item{id: "minecraft:flint_and_steel"} run scoreboard players set $durability lgd.result 64
	execute if data storage lgd:storage item{id: "minecraft:carrot_on_a_stick"} run scoreboard players set $durability lgd.result 25
	execute if data storage lgd:storage item{id: "minecraft:shears"} run scoreboard players set $durability lgd.result 238
	execute if data storage lgd:storage item{id: "minecraft:shield"} run scoreboard players set $durability lgd.result 336
	execute if data storage lgd:storage item{id: "minecraft:bow"} run scoreboard players set $durability lgd.result 384
	execute if data storage lgd:storage item{id: "minecraft:trident"} run scoreboard players set $durability lgd.result 250
	execute if data storage lgd:storage item{id: "minecraft:elytra"} run scoreboard players set $durability lgd.result 432
	execute if data storage lgd:storage item{id: "minecraft:crossbow"} run scoreboard players set $durability lgd.result 326
	execute if data storage lgd:storage item{id: "minecraft:warped_fungus_on_a_stick"} run scoreboard players set $durability lgd.result 100
