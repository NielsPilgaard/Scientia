#priority 1000
import crafttweaker.event.EntityLivingUseItemEvent.All;

events.onEntityLivingUseItemStart(function(event as crafttweaker.event.EntityLivingUseItemEvent.All){
	var usedItem = event.item.definition.id;

	if(usedItem == "dynamictrees:dirtbucket")
	{
		event.cancel();
	}
});