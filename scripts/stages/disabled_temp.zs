#priority 1

import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

import scripts.utility.disableItem;
import scripts.utility.stageTinkersMaterial;

var stage = "disabled";

# List of things to disable
val disableList = [

    <minecraft:furnace>    

] as IItemStack[];

for item in disableList {
    disableItem(item);
}