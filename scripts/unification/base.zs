#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

for material in materials {
	for key, value in materials[material] {
		if (!isNull(value)) {
			if (!key.matches("liquid")) {
				for item in value.items {
					scripts.unification.utility.purgeItemsOreDicts(item);
				}
			}
			else 
			{
			// TODO Implement a liquid purge function
			// scripts.unification.utility.purgeLiquid(part);
			}
		}
	}
}