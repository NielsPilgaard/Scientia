#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.industrial_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<spartanweaponry:javelin_steel> : [
        [
            [null, <tconstruct:arrow_head>.withTag({Material: "steel"}), null],
            [null, <spartanweaponry:material:1>, null], 
            [null, <spartanweaponry:material:1>, null]
        ],
        [
            [null, null, <tconstruct:arrow_head>.withTag({Material: "steel"})],
            [null, <spartanweaponry:material:1>, null], 
            [<spartanweaponry:material:1>, null, null]
        ]
	],
    <immersiveengineering:shield> : [
        [
            [null, materials["steel"].plate, materials["steel"].plate],
            [materials["steel"].plate, <spartanshields:shield_basic_wood>, materials["steel"].plate], 
            [materials["steel"].plate, materials["steel"].plate, materials["steel"].plate]
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