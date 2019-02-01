#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.copper_age;
val itemsToStage as IItemStack[] = [

    <ancientwarfare:wooden_hammer>,
    <ancientwarfare:stone_hammer>,
    <ancientwarfare:iron_hammer>,
    <ancientwarfare:gold_hammer>,
    <ancientwarfare:diamond_hammer>,
	
	<tconstruct:cast>
	
];

for item in itemsToStage {
	addItemStage(stage, item);
}