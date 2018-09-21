#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.copper_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanshields:shield_basic_copper> : [
		[
            [null, materials["copper"].ingot, null],
            [materials["copper"].ingot, <spartanshields:shield_basic_wood>, materials["copper"].ingot], 
            [null, materials["copper"].ingot, null]
        ]
	],
    <spartanshields:shield_basic_silver> : [
		[
            [null, materials["silver"].ingot, null],
            [materials["silver"].ingot, <spartanshields:shield_basic_wood>, materials["silver"].ingot], 
            [null, materials["silver"].ingot, null]
        ]
	]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(stage, item, recipe);
	}
}
