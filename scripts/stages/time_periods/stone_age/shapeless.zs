#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;

var recipeList as IIngredient[][][IItemStack] = {
    <minecraft:cobblestone> : [
        [<contenttweaker:rock>,<contenttweaker:rock>,<contenttweaker:rock>,<contenttweaker:rock>]
    ],
    <hooked:microcrafting:1> : [
        [<ore:fiber>,<ore:fiber>,<ore:fiber>]
    ],
    <tconstruct:arrow_head>.withTag({Material: "stone"}) : [
        [<contenttweaker:rock>,<contenttweaker:rock>,<minecraft:cobblestone>]
    ],
    <spartanweaponry:material> : [
        [<primal_tech:fire_sticks>,<ore:fiber>]
    ],
    <spartanweaponry:throwing_knife_stone> : [
        [<spartanweaponry:material>, <tconstruct:sword_blade>.withTag({Material: "stone"})]
    ],
    <spartanweaponry:throwing_axe_stone> : [
        [<spartanweaponry:material>, <tconstruct:axe_head>.withTag({Material: "stone"})]
    ],
    <minecraft:book> : [
        [<minecraft:leather>, <contenttweaker:wet_pulp>, <minecraft:paper>, <minecraft:paper>]
    ],
    <tconstruct:tooltables> : [
        [<ore:workbench>]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}

var i = 0;

for knife in <ore:artisansKnife>.items {
    mods.ItemStages.addItemStage(stage, knife);
    mods.recipestages.Recipes.addShapeless(
        "minecraft_string_custom_" + i, 
    stage, 
    <minecraft:string> * 2, 
    [<contenttweaker:woven_fiber>,knife.anyDamage().transformDamage()]);
    i = i + 1;
}