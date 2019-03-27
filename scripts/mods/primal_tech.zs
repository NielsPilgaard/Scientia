#priority 100
import crafttweaker.item.IItemStack; 
import crafttweaker.item.IIngredient; 

import mods.primaltech.StoneAnvil;
import mods.primaltech.WoodenBasin;

/*
	Stone Anvil

	mods.primaltech.StoneAnvil.addRecipe(Itemstack output, IIngredient input);
*/
var stoneAnvilRecipes as IItemStack[][] = [
	[<minecraft:coal:1> * 9, <primal_tech:charcoal_block>],
	[<minecraft:dye:15> * 9, <minecraft:bone_block>]
];

for item in stoneAnvilRecipes {
	StoneAnvil.addRecipe(item[0], item[1]);
}

for bark in <ore:barkWood>.items {
	StoneAnvil.addRecipe(<contenttweaker:tannin:0> * 2, bark.definition.makeStack(0));
}

for bone in <ore:bone>.items {
	StoneAnvil.addRecipe(<minecraft:dye:15> * 3, bone);
}

/*
	Wooden Basin

	mods.primaltech.WoodenBasin.addRecipe(IItemStack output, ILiquidStack inputFluid, IIngredient[] ingredients);
*/
var woodenBasinRecipes as IIngredient[][][IItemStack] = {
	<contenttweaker:soaked_hide> * 3: [
		[<harvestcraft:saltitem>, <contenttweaker:raw_hide>, <contenttweaker:raw_hide>, <contenttweaker:raw_hide>],
		[<contenttweaker:raw_hide>, <harvestcraft:saltitem>, <contenttweaker:raw_hide>, <contenttweaker:raw_hide>],
		[<contenttweaker:raw_hide>, <contenttweaker:raw_hide>, <harvestcraft:saltitem>, <contenttweaker:raw_hide>],
		[<contenttweaker:raw_hide>, <contenttweaker:raw_hide>, <contenttweaker:raw_hide>, <harvestcraft:saltitem>]
	]
};

for output, inputs in woodenBasinRecipes {
	for ingredients in inputs {
		WoodenBasin.addRecipe(output, <liquid:water>, ingredients);
	}
}

for item in <ore:barkWood>.items {
	WoodenBasin.addRecipe(<contenttweaker:wet_pulp> * 3, <liquid:water>, [<harvestcraft:saltitem>, item, item, item]);
	WoodenBasin.addRecipe(<contenttweaker:wet_pulp> * 3, <liquid:water>, [item, <harvestcraft:saltitem>, item, item]);
	WoodenBasin.addRecipe(<contenttweaker:wet_pulp> * 3, <liquid:water>, [item, item, <harvestcraft:saltitem>, item]);
	WoodenBasin.addRecipe(<contenttweaker:wet_pulp> * 3, <liquid:water>, [item, item, item, <harvestcraft:saltitem>]);

}
