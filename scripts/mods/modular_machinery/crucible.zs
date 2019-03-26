#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

var machineName = "brick_crucible";

var glass_processing_time as int = 100;
var base_processing_time as int = 100;

var fluidFromOre as int = 144;

for sand in <ore:sand>.items {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_liquid_glass_" + sand.definition.name, machineName, glass_processing_time)
	.addFluidOutput(<liquid:glass> * 1000)
	.addItemInput(sand)
	.build();
}

for metal in materials {
	var liquid = materials[metal].liquid;
	var ore = materials[metal].ore;
	if (!isNull(liquid) && !isNull(ore)) {
		mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_" + metal + "_ore_to_liquid", machineName, base_processing_time)
		.addFluidOutput(liquid.liquids[0])
		.addItemInput(ore.items[0])
		.build();
	}
}