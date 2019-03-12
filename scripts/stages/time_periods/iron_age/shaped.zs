#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.iron_age;

var recipeList as IIngredient[][][][IItemStack] = {
    <spartanshields:shield_basic_iron> : [
		[
            [null, materials["iron"].ingot, null],
            [materials["iron"].ingot, <spartanshields:shield_basic_wood>, materials["iron"].ingot], 
            [null, materials["iron"].ingot, null]
        ]
	],
    <spartanshields:shield_basic_iron> : [
		[
            [null, materials["gold"].ingot, null],
            [materials["gold"].ingot, <spartanshields:shield_basic_wood>, materials["gold"].ingot], 
            [null, materials["gold"].ingot, null]
        ]
	],
    <spartanshields:shield_basic_obsidian> : [
		[
            [null, <ore:obsidian>, null],
            [<ore:obsidian>, <spartanshields:shield_basic_obsidian>, <ore:obsidian>], 
            [null, <ore:obsidian>, null]
        ]
	],
    <watercan:watercan_iron> : [
        [
            [null, <ore:fertilizer>, materials.iron.plate],
            [materials.iron.plate, <minecraft:bucket>, materials.iron.plate],
            [null, materials.iron.plate, null]
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
