#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.industrial_age;

var recipeList as IIngredient[][][IItemStack] = {
    <spartanweaponry:throwing_knife_steel> : [
        [<spartanweaponry:material>, <tconstruct:sword_blade>.withTag({Material: "steel"})]
    ],
    <spartanweaponry:throwing_axe_steel> : [
        [<spartanweaponry:material>, <tconstruct:axe_head>.withTag({Material: "steel"})]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}
