#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.writing;

val items = [

] as IItemStack[];

for item in items {
    mods.ItemStages.addItemStage(stage, item);
}

mods.ItemStages.addItemStage(stage, <ore:signWood>);