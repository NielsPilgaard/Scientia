#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.dye;

val itemsToStage as IItemStack[] = [

	<inspirations:dyed_bottle:*>,
	<minecraft:painting>,
	<inspirations:dyed_bottle:*>
	
];

for item in itemsToStage {
    stageItem(stage, item);
}