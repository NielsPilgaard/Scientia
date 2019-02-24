#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;

var recipeList as IIngredient[][][][IItemStack] = {
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
	],
    <minecraft:bone_block> * 3 : [
        [
            [<ore:bone>, <ore:bone>, <ore:bone>],
            [<ore:bone>, <ore:bone>, <ore:bone>], 
            [<ore:bone>, <ore:bone>, <ore:bone>]
        ]
    ],

    <backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}) : [ 
        [
            [<backpack:tanned_leather>, <backpack:backpack_frame>, <backpack:tanned_leather>], 
            [<backpack:tanned_leather>, <backpack:tanned_leather>, <backpack:tanned_leather>]
        ]
    ],

    <backpack:backpack_piece:2>.withTag({leather_tier: "II", frame_tier: "III"}) : [
        [
            [<ore:leather>, <backpack:backpack_frame>, <ore:leather>], 
            [<ore:leather>, <ore:leather>, <ore:leather>]
        ]
    ],

    <backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}) : [ 
        [
            [null, <backpack:tanned_leather>, null],
            [<backpack:tanned_leather>, <backpack:backpack_frame>, <backpack:tanned_leather>], 
            [null, <backpack:tanned_leather>, null]
        ]
    ],

    <backpack:backpack_piece:1>.withTag({leather_tier: "II", frame_tier: "III"}) : [ 
        [
            [null, <ore:leather>, null],
            [<ore:leather>, <backpack:backpack_frame>, <ore:leather>], 
            [null, <ore:leather>, null]
        ]
    ],

    <backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}) : [
        [
            [<backpack:tanned_leather>, <backpack:tanned_leather>, <backpack:tanned_leather>],
            [<backpack:tanned_leather>, <backpack:backpack_frame>, <backpack:tanned_leather>]
        ]
    ],

    <backpack:backpack_piece>.withTag({leather_tier: "II", frame_tier: "III"}) : [ 
        [
            [<ore:leather>, <ore:leather>, <ore:leather>],
            [<ore:leather>, <backpack:backpack_frame>, <ore:leather>]
        ]
    ],

    <minecraft:string> * 3 : [ 
        [
            [<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>],
            [<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>], 
            [<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>]
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