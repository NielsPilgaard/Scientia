#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.copper_age;

var largePlate = <tconstruct:large_plate>.withTag({Material: "stone"})|<tconstruct:large_plate>.withTag({Material: "flint"})|<tconstruct:large_plate>.withTag({Material: "bone"});

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
	],
    <modularmachinery:blockcontroller> : [
        [
            [<minecraft:stone_slab>, <modularmachinery:blockcasing>, <minecraft:stone_slab>],
            [<modularmachinery:blockcasing>, <ore:book>, <modularmachinery:blockcasing>], 
            [<minecraft:stone_slab>, <modularmachinery:blockcasing>, <minecraft:stone_slab>]
        ]
    ],
    <modularmachinery:blockcasing> * 4 : [
        [
            [<minecraft:stone:*>, largePlate, <minecraft:stone:*>],
            [largePlate, null, largePlate], 
            [<minecraft:stone:*>, largePlate, <minecraft:stone:*>]
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