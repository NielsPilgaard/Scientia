import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.orestages.OreStages.addReplacement;

var replacementItemsForStage as IIngredient[][][string] = {
	stages.novice_miner : [
		[materials.copper.ore],
		[materials.coal.ore],
		[materials.lead.ore],
		[materials.silver.ore]
	],

	stages.apprentice_miner : [
		[materials.tin.ore]

	],

	stages.skilled_miner : [
		[materials.iron.ore],
		[materials.gold.ore]
	],

	stages.expert_miner : [
		[materials.diamond.ore]

	],

	stages.master_miner : [
		[<minecraft:obsidian>, <chisel:basalt>]
		
	]
};

for stage, replaceItemPairs in replacementItemsForStage {
	for replaceItemPair in replaceItemPairs {
		var length = replaceItemPair.length;

		if (length == 1) {
			addReplacement(stage, replaceItemPair[0]);
		} else if (length == 2) {
			addReplacement(stage, replaceItemPair[0], replaceItemPair[1].items[0]);
		}
	}
}