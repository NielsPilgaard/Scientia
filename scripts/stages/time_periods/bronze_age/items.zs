#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.bronze_age;
val itemsToStage as IItemStack[] = [

];

for item in itemsToStage {
	addItemStage(stage, item);
}