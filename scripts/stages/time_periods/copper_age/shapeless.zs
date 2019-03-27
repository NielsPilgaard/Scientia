#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.copper_age;

var recipeList as IIngredient[][][IItemStack] = {
    <spartanweaponry:throwing_knife_copper> : [
        [<spartanweaponry:material>, <tconstruct:sword_blade>.withTag({Material: "copper"})]
    ],
    <spartanweaponry:throwing_axe_copper> : [
        [<spartanweaponry:material>, <tconstruct:axe_head>.withTag({Material: "copper"})]
    ],
    <ancientwarfarenpc:food_bundle> * 2 : [
        [<claybucket:claybucket:1>, <ore:foodSoup>, <ore:listAllmeatcooked>, <ore:listAllveggie>, <ore:listAllfruit>],
        [<ore:foodJuice>, <ore:foodSoup>, <ore:listAllmeatcooked>, <ore:listAllveggie>, <ore:listAllfruit>],
        [<minecraft:potion>.withTag({Potion: "minecraft:water"}), <ore:foodSoup>, <ore:listAllmeatcooked>, <ore:listAllveggie>, <ore:listAllfruit>]
    ]
};

for item, recipesForItem in recipeList {
    recipes.remove(item);
    mods.ItemStages.addItemStage(stage, item);
    
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(stage, item, recipe);
	}
}
