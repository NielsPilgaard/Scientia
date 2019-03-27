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
	if (!isNull(materials[metal].ore)) {
		if (!isNull(materials[metal].liquid)) {
			var ore = materials[metal].ore.items[0];
			var liquid = materials[metal].liquid * fluidFromOre;

			mods.modularmachinery.RecipeBuilder.newBuilder(machineName + formatRecipeName(ore.name) + "ore_to_liquid", machineName, base_processing_time)
			.addFluidOutput(liquid.liquids[0] as ILiquidStack)
			.addItemInput(ore)
			.build();
		}
	}
}