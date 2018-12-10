#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.iron_age;
val itemsToStage as IItemStack[] = [

	<minecraft:cauldron>
	
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