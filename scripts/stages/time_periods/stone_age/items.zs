#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.stone_age;
val itemsToStage as IItemStack[] = [
	<woodenshears:wshears>.withTag({mType: 0 as byte}),
	<woodenshears:wshears>.withTag({mType: 1 as byte}),
	<woodenshears:wshears>.withTag({mType: 2 as byte}),
	<woodenshears:wshears>.withTag({mType: 3 as byte}),
	<woodenshears:wshears>.withTag({mType: 4 as byte}),
	<woodenshears:wshears>.withTag({mType: 5 as byte}),
	<woodenshears:wshears>.withTag({mType: 6 as byte}),
];

for item in itemsToStage {
	addItemStage(stage, item);
}