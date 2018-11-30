#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<primal_tech:wooden_basin> : [
		[
            [<ore:logWood>, stick, <ore:logWood>],
            [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
            [<ore:cobblestone>, null, <ore:cobblestone>]
        ]
	],
    <minecraft:crafting_table> : [
        [
            [<ore:plankWood>, <ore:plankWood>],
            [<ore:plankWood>, <ore:plankWood>]
        ]
    ],
    <campfire:campfire> : [
		[
            [null, <ore:logWood>, null],
            [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
            [<primal_tech:fire_sticks>, <primal_tech:fire_sticks>, <primal_tech:fire_sticks>]
        ]
	],
    <spartanshields:shield_basic_stone> : [
		[
            [null, <ore:stone>, null],
            [<ore:stone>, <spartanshields:shield_basic_wood>, <ore:stone>], 
            [null, <ore:stone>, null]
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