#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;

var recipeList as IIngredient[][][][IItemStack] = {
	<minecraft:lead> : [
        [
            [null, <ore:string>, <ore:string>],
            [null, <ore:string>, <ore:string>], 
            [<hooked:microcrafting:1>, null, null]
        ]
    ],
    <contenttweaker:crude_haybale> : [
        [
            [<contenttweaker:woven_fiber>,<contenttweaker:woven_fiber>,<contenttweaker:woven_fiber>],
            [<contenttweaker:bound_wheat>, <contenttweaker:bound_wheat>, <contenttweaker:bound_wheat>],
            [<contenttweaker:woven_fiber>,<contenttweaker:woven_fiber>,<contenttweaker:woven_fiber>]
        ]
    ],
    <contenttweaker:bound_wheat> : [
        [
            [null,<ore:fiber>,null],
            [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>],
            [null,<ore:fiber>,null]
        ]
    ],
    <primal_tech:leaf_bed> : [
		[
            [<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>],
            [<contenttweaker:bound_wheat>, <contenttweaker:crude_haybale>, <ore:slabWood>], 
            [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
        ]
    ],
    <spartanweaponry:material:1> : [
        [
            [null, <ore:fiber>, null],
            [null, stick, null], 
            [null, stick, null]
        ],
        [
            [null, null, <ore:fiber>],
            [null, stick, null], 
            [stick, null, null]
        ]
	],
    <spartanweaponry:javelin_stone> : [
        [
            [null, <tconstruct:arrow_head>.withTag({Material: "stone"}), null],
            [null, <spartanweaponry:material:1>, null], 
            [null, <spartanweaponry:material:1>, null]
        ],
        [
            [null, null, <tconstruct:arrow_head>.withTag({Material: "stone"})],
            [null, <spartanweaponry:material:1>, null], 
            [<spartanweaponry:material:1>, null, null]
        ]
	],
    <artisanworktables:worktable:1> : [
        [
            [<ore:workbench>, <ore:workbench>, <ore:workbench>],
            [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
            [<ore:logWood>, null, <ore:logWood>]
        ]
    ],
    <artisanworktables:worktable:2> : [
        [
            [<minecraft:brick>, <minecraft:stone_slab>, <minecraft:brick>],
            [<minecraft:brick>, <ore:workbench>, <minecraft:brick>], 
            [<ore:logWood>, null, <ore:logWood>]
        ]
    ],
    <claybucket:unfiredclaybucket> : [
        [
            [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
            [null, <minecraft:clay_ball>, null], 
        ]
    ],
    <harvestcraft:wovencottonitem> * 3 : [
        [
            [<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>]
        ]
    ],
    <woodenshears:wshears>.withTag({mType: 0 as byte}) : [
        [
            [<ore:plankWood>, null, <ore:plankWood>],
            [null, <ore:treeSapling>, null], 
            [stick, null, stick]
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