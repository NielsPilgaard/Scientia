#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.copper_age;
val itemsToStage as IItemStack[] = [

	<tconstruct:cast>
	
];

for item in itemsToStage {
	addItemStage(stage, item);
}