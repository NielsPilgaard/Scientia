#priority 100
import crafttweaker.item.IItemStack;

import scripts.utility.stageIItemstack;

var stage = stages.writing;

val items = [

] as IItemStack[];

for item in items {
    stageIItemstack(stage, item);
}