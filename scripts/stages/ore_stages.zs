#priority 100
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.orestages.OreStages.addReplacement;

var coarseDirt = <minecraft:dirt:1>;

for metal in materials {
	if (!isNull(materials[metal])) {
		if (!isNull(materials[metal].ore)) {
			print(metal + ":" + materials[metal].ore.items[0].name);
		}
		if (!isNull(materials[metal].ore_deposit)) {
			print(metal + ":" + materials[metal].ore_deposit.items[0].name);
		}		
	}
}

var replacementItemsForStage as IIngredient[][][string] = {
	stages.novice_miner : [
		[materials.copper.ore],
		[materials.coal.ore],
		[materials.lead.ore],
		[materials.silver.ore],

		[materials.copper.deposit, coarseDirt],
		[materials.coal.deposit, coarseDirt],
		[materials.lead.deposit, coarseDirt],
		[materials.silver.deposit, coarseDirt]
	],

	stages.apprentice_miner : [
		[<contenttweaker:ore_tin>],

		[<contenttweaker:deposit_tin>, coarseDirt]
	],

	stages.skilled_miner : [
		[materials.iron.ore],
		[materials.gold.ore],

		[materials.iron.deposit, coarseDirt],
		[materials.gold.deposit, coarseDirt]
	],

	stages.expert_miner : [
		[materials.diamond.ore],

		[materials.diamond.deposit, coarseDirt]

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