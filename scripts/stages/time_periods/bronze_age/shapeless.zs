#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.bronze_age;

var recipeList as IIngredient[][][IItemStack] = {
    <spartanweaponry:throwing_knife_bronze> : [
        [<spartanweaponry:material>, <tconstruct:sword_blade>.withTag({Material: "bronze"})]
    ],
    <spartanweaponry:throwing_axe_bronze> : [
        [<spartanweaponry:material>, <tconstruct:axe_head>.withTag({Material: "bronze"})]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}
