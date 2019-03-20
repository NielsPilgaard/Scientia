#priority 100
var machineName = "research_station_tier_1";

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "gamestagebook_metallurgy", machineName, 400)
	.addItemOutput(<gamestagebooks:metallurgy>)
	.setChance(0.50)
	.addItemInput(materials.copper.ore.items[0] * 8)
	.addFuelItemInout(6400)
	.build();