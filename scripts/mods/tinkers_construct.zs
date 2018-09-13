#priority 100
import crafttweaker.item.IItemStack; 

import mods.tconstruct.Drying;
/*
	Drying Rack

	Drying.addRecipe(IItemStack output, IIngredient input, int time);
*/

var dryingRecipes as IItemStack[][] = [
	[<minecraft:paper>, <contenttweaker:wet_pulp>],
	[<minecraft:leather>, <contenttweaker:processed_leather>]
];

for item in dryingRecipes {
	Drying.addRecipe(item[0], item[1], 600);
}