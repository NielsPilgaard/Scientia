#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.stone_age;
var modIDs as string[] = [
	"woodenshears"
];

for mod in modIDs {
	for item in loadedMods["woodenshears"].items {
		mods.ItemStages.addItemStage(stage, item);
	}
}