#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

for i in 0 to 15 {
	if (i != 4) {
		recipes.replaceAllOccurences(<minecraft:dye>.definition.makeStack(i), <inspirations:dyed_bottle>.definition.makeStack(i));
		recipes.replaceAllOccurences(<botania:dye>.definition.makeStack(i), <inspirations:dyed_bottle>.definition.makeStack(i));
	}
}

<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeWhite>.remove(<botania:dye>);
<ore:dyeOrange>.remove(<botania:dye:1>);/*
<ore:dyeMagenta>.remove();
<ore:dyeLightBlue>.remove();
<ore:dyeYellow>.remove();
<ore:dyeLime>.remove();
<ore:dyePink>.remove();
<ore:dyeGray>.remove();
<ore:dyeLightGray>.remove();
<ore:dyeCyan>.remove();
<ore:dyePurple>.remove();*/
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);/*
<ore:dyeGreen>.remove();
<ore:dyeRed>.remove();
<ore:dyeBlack>.remove();
*/