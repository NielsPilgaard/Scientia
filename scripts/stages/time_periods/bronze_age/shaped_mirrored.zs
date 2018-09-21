#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.bronze_age;

var recipeList as IIngredient[][][][IItemStack] = {
    <spartanweaponry:javelin_bronze> : [
        [
            [null, <tconstruct:arrow_head>.withTag({Material: "bronze"}), null],
            [null, <spartanweaponry:material:1>, null], 
            [null, <spartanweaponry:material:1>, null]
        ],
        [
            [null, null, <tconstruct:arrow_head>.withTag({Material: "bronze"})],
            [null, <spartanweaponry:material:1>, null], 
            [<spartanweaponry:material:1>, null, null]
        ]
	]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapedMirrored(stage, item, recipe);
        
        
	}
}