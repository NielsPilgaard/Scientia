import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.orestages.OreStages.addReplacement;

var replacementItemsForStage as IIngredient[][][string] = {
	stages.novice_miner : [
		[materials.copper.ore],
		[materials.coal.ore],
		[materials.lead.ore],
		[materials.silver.ore],
		[materials.copper.deposit, <minecraft:dirt:1>],
		[materials.coal.deposit, <minecraft:dirt:1>],
		#[materials.lead.deposit, <minecraft:dirt:1>],
		[materials.silver.deposit, <minecraft:dirt:1>]
	],

	stages.apprentice_miner : [
		[materials.tin.ore],
		[materials.tin.deposit, <minecraft:dirt:1>]
	],

	stages.skilled_miner : [
		[materials.iron.ore],
		[materials.gold.ore],
		[materials.iron.deposit, <minecraft:dirt:1>],
		[materials.gold.deposit, <minecraft:dirt:1>]
	],

	stages.expert_miner : [
		[materials.diamond.ore],
		[materials.diamond.deposit, <minecraft:dirt:1>]

	],

	stages.master_miner : [
		[<minecraft:obsidian>, <chisel:basalt2:7>]
		
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