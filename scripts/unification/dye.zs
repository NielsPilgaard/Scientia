#priority 1250

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

for i in 0 to 16 {
	if (i != 4) {
		recipes.replaceAllOccurences(<minecraft:dye>.definition.makeStack(i), <inspirations:dyed_bottle>.definition.makeStack(i));
	}
}

for i in 0 to 16 {
	recipes.replaceAllOccurences(<botania:dye>.definition.makeStack(i), <inspirations:dyed_bottle>.definition.makeStack(i));
}

<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
