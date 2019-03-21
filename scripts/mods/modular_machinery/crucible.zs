#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IFurnaceRecipe;

# This script contains recipes for all variants of high ovens.

var machineName = "brick_crucible";
var processing_time as int = 100;

for sand in <ore:sand>.items {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_liquid_glass", machineName, processing_time)
	.addFluidOutput(<liquid:glass>)
	.addItemInput(sand)
	.build();
}