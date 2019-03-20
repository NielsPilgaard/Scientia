#priority 100
import scripts.mods.functions.createHighOvenRecipe;
import crafttweaker.item.IItemStack;

# This script contains recipes for all variants of high ovens.

var machineName = "high_oven";
var processing_time as int = 200;

var furnaceRecipes as IItemStack[IItemStack] = {

};

for key, value in furnaceRecipes {
	createHighOvenRecipe(machineName, key, value, processing_time);
}