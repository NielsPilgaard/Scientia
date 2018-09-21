#priority 100

var stage = stages.advanced_sifting;

for item in loadedMods["waterstrainer"].items {
    mods.ItemStages.addItemStage(stage, item);
}