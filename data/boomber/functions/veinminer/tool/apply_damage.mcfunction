setblock ~ 255 ~ minecraft:shulker_box
data modify block ~ 255 ~ Items append from entity @s SelectedItem

execute store result block ~ 255 ~ Items[0].tag.Damage int 1 run scoreboard players get #bb.vm.damage bb.vm.var

loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ iron_pickaxe{ctc: {id: "inventory_modifier"}}
setblock ~ 255 ~ minecraft:air