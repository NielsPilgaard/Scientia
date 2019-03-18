#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.iron_age;
val itemsToStage as IItemStack[] = [

	<jaff:iron_fishing_rod>,
	<jaff:golden_fishing_rod>,
	<jaff:iron_hook>,
	
	<minecraft:cauldron>,
	<minecraft:golden_carrot>,
	<minecraft:golden_apple>,
	<minecraft:golden_apple:1>,
	
	<rustic:chain>,
	<rustic:chain_gold>,
	
	<watercan:watercan_iron>

];

for item in itemsToStage {
	addItemStage(stage, item);
}

# Bibliocraft Lamps & Lanterns
for item in <ore:advancedLighting>.items {
	addItemStage(stage, item);
}

# Bibliocraft Toolracks
for item in <ore:toolrackWood>.items {
	addItemStage(stage, item);
}

for item in <ore:clockWood>.items {
	addItemStage(stage, item);
}