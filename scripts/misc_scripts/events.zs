#priority 1000
import crafttweaker.event.PlayerCraftedEvent;

events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent){
    var player = event.player;
	var item = event.output.definition.id;

	if(item == "gamestagebooks:novice_architect")
	{
        mods.linear.enableAllBuildModes(player);
		mods.linear.setMaxPlacementDistance(player, 50);
	}

	else if(item == "gamestagebooks:skilled_architect")
	{
        mods.linear.setPlacementRange(player, "survival", mods.linear.getPlacementRange(player, "survival") + 10);
        mods.linear.setMaxBlocksPlaced(player, mods.linear.getMaxBlocksPlaced(player) + 256);
        mods.linear.setMaxPlacementDistance(player, mods.linear.getMaxPlacementDistance(player) + 10);
	}

	else if(item == "gamestagebooks:master_architect")
	{
		mods.linear.setPlacementRange(player, "survival", mods.linear.getPlacementRange(player, "survival") + 10);
        mods.linear.setMaxBlocksPlaced(player, mods.linear.getMaxBlocksPlaced(player) + 256);
        mods.linear.setMaxPlacementDistance(player, mods.linear.getMaxPlacementDistance(player) + 10);
        mods.linear.setCanPlaceInMidair(player, "survival", true);
	}
});