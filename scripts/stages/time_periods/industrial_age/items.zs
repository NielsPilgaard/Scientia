#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.industrial_age;
val itemsToStage as IItemStack[] = [

	<immersivepetroleum:speedboat>,
	<immersivepetroleum:upgrades>,
	<immersivepetroleum:upgrades:1>,
	<immersivepetroleum:upgrades:2>,
	<immersivepetroleum:upgrades:3>,
	<immersivepetroleum:upgrades:4>,
	<immersivepetroleum:oil_can>

];

for item in itemsToStage {
	addItemStage(stage, item);
}