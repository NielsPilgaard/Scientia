#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

for i in 0 to 15 {
	recipes.replaceAllOccurences(<minecraft:dye>.definition.makeStack(i), <inspirations:dyed_bottle>.definition.makeStack(i));
}

