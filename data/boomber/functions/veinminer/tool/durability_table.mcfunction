#declare score_holder $durability

execute if entity @s[nbt={SelectedItem: {id: 'minecraft:wooden_pickaxe'}}] run scoreboard players set $durability bb.vm.var 59
execute if entity @s[nbt={SelectedItem: {id: 'minecraft:stone_pickaxe'}}] run scoreboard players set $durability bb.vm.var 131
execute if entity @s[nbt={SelectedItem: {id: 'minecraft:iron_pickaxe'}}] run scoreboard players set $durability bb.vm.var 249
execute if entity @s[nbt={SelectedItem: {id: 'minecraft:golden_pickaxe'}}] run scoreboard players set $durability bb.vm.var 32
execute if entity @s[nbt={SelectedItem: {id: 'minecraft:diamond_pickaxe'}}] run scoreboard players set $durability bb.vm.var 1561
execute if entity @s[nbt={SelectedItem: {id: 'minecraft:netherite_pickaxe'}}] run scoreboard players set $durability bb.vm.var 2031