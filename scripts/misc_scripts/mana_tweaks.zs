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

	if (!isNull(player.currentItem)) {
		var heldItemName = player.currentItem.name;
		if (heldItemName.matches(<buildinggadgets:buildingtool>.name)|
			heldItemName.matches(<buildinggadgets:exchangertool>.name)|
			heldItemName.matches(<buildinggadgets:copypastetool>.name)|
			heldItemName.matches(<buildinggadgets:destructiontool>.name)) {
		player.manaRepairSlot(mainhand, 100, 1);
		}
	}
});