#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.industrial_age;
for item in loadedMods["industrialrenewal"].items {
	mods.ItemStages.addItemStage(stage, item);
}/*
var modIDs as string[] = [
	"industrialrenewal",
	""
];

for mod in modIDs {
	for item in loadedMods[mod].items {
		mods.ItemStages.addItemStage(stage, item);
	}
}*/