#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.bronze_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanshields:shield_basic_silver> : [
		[
            [null, materials["bronze"].ingot, null],
            [materials["bronze"].ingot, <spartanshields:shield_basic_wood>, materials["bronze"].ingot], 
            [null, materials["bronze"].ingot, null]
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
