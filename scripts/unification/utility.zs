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

function purgeOreDictEntry(oreDictEntry as IOreDictEntry) {
	for item in oreDictEntry.items {
		if (!item.matches(getPreferredItem(oreDictEntry))) {
			print("Now purging " ~ item.displayName);
			purgeItem(item);
			oreDictEntry.remove(item);
		}
	}
}

function purgeItem(item as IItemStack) {
	mods.jei.JEI.removeAndHide(item);
	furnace.remove(item);
    purgeItemProcessing(item);
}

function purgeItemProcessing(item as IItemStack) {
// TODO: Add removals for processing recipes
	mods.immersiveengineering.Crusher.removeRecipe(item);
}