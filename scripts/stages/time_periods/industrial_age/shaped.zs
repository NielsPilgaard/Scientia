#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.industrial_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanshields:shield_basic_steel> : [
		[
            [null, materials["steel"].ingot, null],
            [materials["steel"].ingot, <spartanshields:shield_basic_wood>, materials["steel"].ingot], 
            [null, materials["steel"].ingot, null]
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
