#priority 100

var stage = stages.advanced_chisel;

for item in loadedMods["chiselsandbits"].items {
    mods.ItemStages.addItemStage(stage, item);
}