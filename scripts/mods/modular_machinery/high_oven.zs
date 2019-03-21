#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IFurnaceRecipe;

# This script contains recipes for all variants of high ovens.

var machineName = "brick_high_oven";
var processing_time as int = 100;

#TODO: Finish this associative array, items on the right should be the input that produces the cooked output
/*
var furnaceRecipes as IItemStack[IItemStack] = {
	<ore:logWood> : <minecraft:coal:1>,
	<ore:cobblestone> : <minecraft:stone>,
	<backpack:tanned_leather> : <backpack:bound_leather>,
	<minecraft:cooked_porkchop> : ,
	<minecraft:cooked_fish> : ,
	<minecraft:cooked_fish:1> : ,
	<minecraft:cooked_chicken> : ,
	<minecraft:cooked_rabbit> : ,
	<minecraft:cooked_mutton> : ,
	<familiarfauna:turkey_leg_cooked> : ,
	<familiarfauna:venison_cooked> : ,
	<harvestcraft:calamaricookeditem> : ,
	<harvestcraft:clamcookeditem> : ,
	<harvestcraft:frogcookeditem> : ,
	<harvestcraft:shrimpcookeditem> : ,
	<harvestcraft:snailcookeditem> : ,
	<harvestcraft:oystercookeditem> : ,
	<harvestcraft:turkeycookeditem> : ,
	<harvestcraft:venisoncookeditem> : ,
	<harvestcraft:musselcookeditem> : ,
	<harvestcraft:duckcookeditem> : ,
};

for output, input in furnaceRecipes {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_" + formatRecipeName(output.name), machineName, processing_time)
	.addItemOutput(output)
	.addItemInput(input)
	.build();
}
*/