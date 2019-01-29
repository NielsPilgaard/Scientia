#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

for material in materials {
	for part in materials.material {
		if (!part.matches(materials.material.liquid) {
			scripts.unification.utility.purgeOreDictEntry(part.items[0].ores);
		} 
		else 
		{
		// TODO Implement a liquid purge function
			scripts.unification.utility.purgeLiquid(part);
		}
	}
}