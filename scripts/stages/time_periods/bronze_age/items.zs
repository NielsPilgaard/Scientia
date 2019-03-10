#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.bronze_age;

val itemsToStage as IItemStack[] = [

	<minecraft:redstone_torch>,
	<minecraft:redstone_lamp>,
	<minecraft:repeater>,
	<minecraft:comparator>,
	<inspirations:redstone_torch_lever>,
	<quark:redstone_randomizer>,
	<quark:lit_lamp>,
	<minecraft:sticky_piston>,
	<minecraft:piston>,
	<minecraft:redstone>,
	<minecraft:redstone_block>,
	<minecraft:dispenser>

];

for item in itemsToStage {
	addItemStage(stage, item);
}