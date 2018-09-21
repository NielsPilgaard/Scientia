#priority 100
var stage = stages.chisel;

for item in loadedMods["chisel"].items {
    mods.ItemStages.addItemStage(stage, item);
}