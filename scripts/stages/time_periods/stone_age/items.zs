#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.stone_age;
val itemsToStage as IItemStack[] = [

	<inspirations:path>,
	<inspirations:path:1>,
	<inspirations:path:2>,
	<inspirations:path:3>,
	
	<primal_tech:stone_anvil>,
	<primal_tech:fire_sticks>,
	<primal_tech:stone_mallet>

];

for item in itemsToStage {
	addItemStage(stage, item);
}