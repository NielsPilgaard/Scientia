/*
An example of CraftTweaker events, might come in handy

#priority 1000
import crafttweaker.event.PlayerCraftedEvent;

events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent){
    var player = event.player;
	var item = event.output.definition.id;

	if(item == "gamestagebooks:novice_architect")
	{
	}

	else if(item == "gamestagebooks:skilled_architect")
	{
	}

	else if(item == "gamestagebooks:master_architect")
	{
	}
});

*/