#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.unification.utility.purgeItemsOreDicts;

for material in materials {
	for key, value in materials[material] {
		if (!isNull(value)) {
			if (!key.matches("liquid")) {
				for item in value.items {
					purgeItemsOreDicts(item);
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

purgeItemsOreDicts(<contenttweaker:material_part:220>);
purgeItemsOreDicts(<minecraft:stick>);