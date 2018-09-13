#priority 2000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Crusher;

function removeProcessingDust(item as IItemStack) {
    mods.immersiveengineering.Crusher.removeRecipe(item);
}