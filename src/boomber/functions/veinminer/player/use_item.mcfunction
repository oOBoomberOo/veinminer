scoreboard players set @s bb.vm.success 0

scoreboard players set #tool_kind bb.vm.var 0
	execute unless data entity @s SelectedItem.tag.ctc.tool run scoreboard players set #tool_kind bb.vm.var 1
	execute if data entity @s SelectedItem.tag.ctc.traits."lgd:safe_item" if data entity @s SelectedItem.tag.ctc.tool run scoreboard players set #tool_kind bb.vm.var 2

execute if predicate boomber:veinminer/is_sneaking if score #tool_kind bb.vm.var matches 1..2 anchored eyes positioned ^ ^ ^0.1 anchored feet run function boomber:veinminer/player/raycast