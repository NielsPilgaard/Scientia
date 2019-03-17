#priority 1250

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:dye>.remove(<minecraft:dye:*>);
<ore:dye>.remove(<botania:dye:*>);

<ore:dyeRed>.remove(<rustic:wildberries>);
<ore:dyeLightGray>.remove(<rustic:ironberries>);
<ore:dyePurple>.remove(<rustic:grapes>);

<ore:stickWood>.remove(<naturesaura:ancient_stick>);

<ore:craftingTableWood>.remove(<minecraft:crafting_table>);

for item in <ore:itemSalt>.items {
    <ore:itemSalt>.remove(item);
}

for item in <ore:foodSalt>.items {
    <ore:foodSalt>.remove(item);
}