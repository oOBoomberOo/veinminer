data modify storage lgd:storage item.Slot set value 0b

setblock ~ 255 ~ minecraft:yellow_shulker_box
	data modify block ~ 255 ~ Items append from storage lgd:storage item
	loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ air{drop_contents: 1b}
setblock ~ 255 ~ minecraft:air
