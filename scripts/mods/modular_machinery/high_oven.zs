#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IFurnaceRecipe;

# This script contains recipes for all variants of high ovens.

var machineName = "brick_high_oven";
var processing_time as int = 200;
var defaultFuelUsePerItem = 200;

var furnaceRecipes = furnace.all;

for recipe in furnaceRecipes {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_" + formatRecipeName(recipe.output.name), machineName, processing_time)
	.addItemOutput(recipe.output)
	.addItemInput(recipe.input)
	.addFuelItemInout(200)
	.build();
}