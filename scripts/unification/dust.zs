#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide;
import scripts.unification.utility.removeProcessingDust;

val sulfurs = [
    <natura:materials:4>,
    <immersiveengineering:material:25>
    ] as IItemStack[];

for item in sulfurs {
    <ore:dustSulfur>.remove(item);
    <ore:dustSulphur>.remove(item);
    removeProcessingDust(item);
    removeAndHide(item);
}

val nitors = [
    <immersiveengineering:material:24>    
    ] as IItemStack[];

for item in sulfurs {
    <ore:dustSalpeter>.remove(item);
    removeProcessingDust(item);
    removeAndHide(item);
}