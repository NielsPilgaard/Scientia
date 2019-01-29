#priority 2000

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

function purgeItem(item as IItemStack) {
// TODO: Add removals for processing recipes
	recipes.remove(item);
	furnace.remove(item);
	furnace.setFuel(item, 0);
    mods.immersiveengineering.Crusher.removeRecipe(item);
}

function purgeOreDictEntry(oreDictEntry as IOreDictEntry) {
	for item in oreDictEntry.items {
		if (!item.matches(getPreferredItem(oreDictEntry))) {
			purgeItem(item);
		}
	}
}