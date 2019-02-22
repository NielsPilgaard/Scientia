#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.iron_age;

var recipeList as IIngredient[][][IItemStack] = {
    <spartanweaponry:throwing_knife_iron> : [
        [<spartanweaponry:material>, <tconstruct:sword_blade>.withTag({Material: "iron"})]
    ],
    <spartanweaponry:throwing_axe_iron> : [
        [<spartanweaponry:material>, <tconstruct:axe_head>.withTag({Material: "iron"})]
    ],
    <bibliocraft:lampiron> : [
        [<ore:dyeBlue>,<ore:lanternIron>]
    ],
    <bibliocraft:lampiron:11> : [
        [<ore:dyeWhite>,<ore:lanternIron>]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}