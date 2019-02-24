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
    <backpack:backpack_frame> : [
        [
            [<tconstruct:rack>.anyDamage(), <ore:string>, <tconstruct:rack>.anyDamage()],
            [<ore:string>, null, <ore:string>], 
            [<tconstruct:rack>.anyDamage(), <ore:string>, <tconstruct:rack>.anyDamage()]
        ]
    ],
    <artisanworktables:worktable:5> : [
        [
            [<ore:workbench>, <ore:workbench>, <ore:workbench>],
            [<ore:workbench>, <ore:logWood>, <ore:workbench>], 
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
/*
<backpack:backpack>.withTag({slots: 27, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 3, slots_per_row: 9})

<backpack:backpack:100>.withTag({slots: 45, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 5, slots_per_row: 9})
<backpack:backpack>.withTag({"backpack-UID": "98d751c7-9121-4eb8-99c6-de88c8847b47", slots: 18, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 1, slots_per_row: 9})
<backpack:backpack:200>.withTag({slots: 63, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 7, slots_per_row: 9}) */