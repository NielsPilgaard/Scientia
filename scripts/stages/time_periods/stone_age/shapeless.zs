#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;

var recipeList as IIngredient[][][IItemStack] = {
    <minecraft:cobblestone> : [
        [<contenttweaker:rock>,<contenttweaker:rock>,<contenttweaker:rock>,<contenttweaker:rock>]
    ],
    <hooked:microcrafting:1> : [
        [<ore:fiber>,<ore:fiber>,<ore:fiber>]
    ],
    <contenttweaker:spearhead> : [
        [<contenttweaker:rock>,<contenttweaker:rock>,<minecraft:cobblestone>]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}