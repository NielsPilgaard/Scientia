#priority 100
var machineName = "research_station_tier_1";

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "gamestagebook_metallurgy", machineName, 400)
	.addItemOutput(<gamestagebooks:metallurgy>)
	.setChance(0.50)
	.addItemInput(materials.copper.ore.items[0] * 8)
	.addFuelItemInout(25600)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "gamestagebook_glassblowing", machineName, 400)
	.addItemOutput(<gamestagebooks:g_lassblowing>)
	.setChance(0.50)
	.addItemInput(<ore:sand>, 16)
	.addFuelItemInout(12800)
	.build();