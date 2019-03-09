#priority 1995

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function getPreferredItem(oreDictEntry as IOreDictEntry) as IItemStack {
	for mod in preferredOutputMods {
		for item in oreDictEntry.items {
			if (item.definition.owner == mod) {
				return item;
			}
		}
	}
	return null;
}

function purgeItemsOreDicts(itemToKeep as IItemStack) {
	for oreDict in itemToKeep.ores {
		for item in oreDict.items {
			if (!item.matches(itemToKeep)) {
				purgeItem(item);
				if (item.definition.owner != "chisel") {
				oreDict.remove(item);
				}
			}
		}
	}
}

function purgeItem(item as IItemStack) {
	print("Now purging " ~ item.displayName);
	mods.jei.JEI.removeAndHide(item);
	furnace.remove(item);
    purgeItemProcessing(item);
}

function purgeItemProcessing(item as IItemStack) {
// TODO: Add removals for processing recipes
	mods.immersiveengineering.Crusher.removeRecipe(item);
}