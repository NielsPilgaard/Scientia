#priority 100
import mods.manatweaks.ManaHandler;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityEquipmentSlot; 
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IItemStack;

events.onPlayerTick(function(event as PlayerTickEvent){
	var player = event.player;
	var mainhand = crafttweaker.entity.IEntityEquipmentSlot.mainHand();
	var item = player.currentItem.index;
	
	if (!isNull(player.currentItem)) {
		print("Current item: " ~ player.currentItem.displayName);
		if (player.currentItem.matches(<buildinggadgets:buildingtool:*>.withTag({}))) {
		player.manaRepairSlot(mainhand, 10, 1);
		//<buildinggadgets:buildingtool:*>.manaRepair(player, 10, 1);
		}
	}
});
