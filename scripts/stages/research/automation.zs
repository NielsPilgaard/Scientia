#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
var stage = stages.automation;

val automationRecipeOredicts as IOreDictEntry[] = [
    
    <ore:wool>,
    <ore:plankWood>,
    <ore:stairWood>,
    <ore:slabWood>,
    <ore:chestWood>,
    <ore:fenceWood>,
    <ore:fenceGateWood>,
    <ore:doorWood>,
    <ore:pressurePlateWood>,
    <ore:trapdoorWood>,
    <ore:buttonWood>,
    <ore:shelfWood>,
    <ore:potionShelfWood>,
    <ore:bookcaseWood>,
    <ore:toolrackWood>,
    <ore:mapframeWood>,
    <ore:signWood>,
    <ore:labelWood>,
    <ore:tableWood>,
    <ore:chairWood>,
    <ore:seatBack>,
    <ore:furniturePanelerWood>,
    <ore:deskWood>,
    <ore:seat>,
    <ore:caseWood>,
    <ore:mapFrameWood>,
    <ore:armorStandWood>,
    <ore:doorTreatedWood>,
    <ore:bookshelf>
];

for oredictEntry in automationRecipeOredicts {
    for item in oredictEntry.items {
        mods.recipestages.Recipes.setRecipeStage(stage, item);
    }
}

/*
var recipeList as IIngredient[][][][IItemStack] = {
	<minecraft:lead> : [
        [
            [null, <ore:string>, <ore:string>],
            [null, <ore:string>, <ore:string>], 
            [<hooked:microcrafting:1>, null, null]
        ]
    ]
};

for item, recipesForItem in recipeList {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapedMirrored(stage, item, recipe);
	}
}*/