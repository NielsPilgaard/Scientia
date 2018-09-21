#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.iron_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanweaponry:javelin_iron> : [
        [
            [null, <tconstruct:arrow_head>.withTag({Material: "iron"}), null],
            [null, <spartanweaponry:material:1>, null], 
            [null, <spartanweaponry:material:1>, null]
        ],
        [
            [null, null, <tconstruct:arrow_head>.withTag({Material: "iron"})],
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