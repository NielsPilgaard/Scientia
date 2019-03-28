#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.copper_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanweaponry:javelin_copper> : [
        [
            [null, <tconstruct:arrow_head>.withTag({Material: "copper"}), null],
            [null, <spartanweaponry:material:1>, null], 
            [null, <spartanweaponry:material:1>, null]
        ],
        [
            [null, null, <tconstruct:arrow_head>.withTag({Material: "copper"})],
            [null, <spartanweaponry:material:1>, null], 
            [<spartanweaponry:material:1>, null, null]
        ]
	],
	<artisanworktables:worktable:6> : [
        [
            [materials.aluminum.ingot, materials.copper.ingot, materials.aluminum.ingot],
            [materials.aluminum.ingot, materials.copper.block, materials.aluminum.ingot], 
            [<ore:logWood>, null, <ore:logWood>]
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