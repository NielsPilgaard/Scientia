#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.chisel;

for item in loadedMods["chisel"].items {
    mods.ItemStages.addItemStage(stage, item);
}

val chiselsAndBits as IItemStack[] = [
	<chiselsandbits:chisel_stone>,
	<chiselsandbits:chisel_iron>,
	<chiselsandbits:chisel_gold>,
	<chiselsandbits:chisel_diamond>,
	<chiselsandbits:positiveprint>,
	<chiselsandbits:negativeprint>,
	<chiselsandbits:mirrorprint>,
	<chiselsandbits:bit_bag>,
	<chiselsandbits:wrench_wood>,
	<chiselsandbits:bitsaw_diamond>,
	<chiselsandbits:tape_measure>,
	<chiselsandbits:bittank>
];

for item in chiselsAndBits {
mods.ItemStages.addItemStage(stage, item);
}