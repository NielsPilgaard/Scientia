#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.stone_age;
#for item in loadedMods["woodenshears"].items {
#    addItemStage(stage, item);
#}
var modIDs as string[] = [
	"woodenshears",
	"morecauldrons"
];

for mod in modIDs {
	for item in loadedMods[mod].items {
		addItemStage(stage, item);
	}
}