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
		var heldItemName = player.currentItem.definition.id;
		if (heldItemName.matches(<buildinggadgets:buildingtool>.definition.id)|
			heldItemName.matches(<buildinggadgets:exchangertool>.definition.id)|
			heldItemName.matches(<buildinggadgets:copypastetool>.definition.id)|
			heldItemName.matches(<buildinggadgets:destructiontool>.definition.id)) {
		player.manaRepairSlot(mainhand, 100, 1);
		}
	}
});