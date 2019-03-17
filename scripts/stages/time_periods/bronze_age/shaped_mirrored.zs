#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.bronze_age;

var recipeList1 as IIngredient[][][][IItemStack] = {
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

# For items that should not be item-staged
var recipeList2 as IIngredient[][][][IItemStack] = {
    <sereneseasons:season_clock> : [ 
        [
            [<ore:fertilizer>, <ore:blockBone>, <ore:fertilizer>],
            [<ore:blockBone>, materials.redstone.dust, <ore:blockBone>], 
            [<ore:fertilizer>, <ore:blockBone>, <ore:fertilizer>]
        ]
    ],

    <sereneseasons:season_sensor_spring> : [ 
        [
            [materials.redstone.dust, materials.redstone.dust, materials.redstone.dust],
            [<ore:fertilizer>, <sereneseasons:season_clock>, <ore:fertilizer>], 
            [<ore:slabCobblestone>, <ore:slabCobblestone>, <ore:slabCobblestone>]
        ]
    ]
};
     
for item, recipesForItem in recipeList1 {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapedMirrored(stage, item, recipe); 
	}
}

# For items that should not be item-staged
for item, recipesForItem in recipeList2 {
    recipes.remove(item);

	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapedMirrored(stage, item, recipe); 
	}
}