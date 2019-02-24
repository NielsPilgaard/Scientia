import crafttweaker.item.IItemStack;

<campfire:campfire>.addTooltip(format.aqua("The Campfire can also cook Cobblestone and Wood Logs."));

<ore:barkWood>.addTooltip(format.aqua("Obtained by right clicking a Wood Log with a Hatchet. Does not work on Dynamic Trees."));

<minecraft:leather>.clearTooltip();
<minecraft:leather>.addTooltip(format.white("Leather"));
<minecraft:leather>.addTooltip(format.blue(format.italic("Minecraft")));
<minecraft:leather>.addTooltip(format.blue("Leather Tier: " + format.yellow("I")));

# =========================================== #
# Backpack Mod
# =========================================== #

val backpackModItems as IItemStack[] = [
    <backpack:backpack_piece:*>,
    <backpack:backpack_frame>,
    <backpack:tanned_leather>,
    <backpack:backpack:*>
];

for item in backpackModItems {
    item.clearTooltip();
}
<backpack:tanned_leather>.clearTooltip();

<backpack:backpack_frame>.addTooltip(format.white("Wooden Backpack Frame"));

<backpack:backpack_piece>.addTooltip(format.white("Top Backpack Piece"));
<backpack:backpack_piece:1>.addTooltip(format.white("Middle Backpack Piece"));
<backpack:backpack_piece:2>.addTooltip(format.white("Bottom Backpack Piece"));

<backpack:backpack>.addTooltip(format.white("Small Backpack"));
<backpack:backpack:100>.addTooltip(format.white("Middle Backpack"));
<backpack:backpack:200>.addTooltip(format.white("Big Backpack"));

<backpack:tanned_leather>.addTooltip(format.white("Sturdy Leather"));

for item in backpackModItems {
    item.addTooltip(format.blue(format.italic("Backpack")));
}

<backpack:tanned_leather>.addTooltip(format.blue("Leather Tier: " + format.yellow("II")));

<backpack:backpack_piece>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece:1>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece:2>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("II")));
<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("II")));
<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.blue("Leather Tier: " + format.yellow("II")));

# Small Backpack
var small_backpack_tier1 = <backpack:backpack>.withTag({slots: 12, leather_tier: "II", frame_tier: "III", slots_used: 0, module_slots: 1, slots_per_row: 6});
var small_backpack_tier2 = <backpack:backpack>.withTag({slots: 18, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 1, slots_per_row: 9});
small_backpack_tier1.addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
small_backpack_tier2.addTooltip(format.blue("Leather Tier: " + format.yellow("II")));
mods.jei.JEI.addItem(small_backpack_tier1);
mods.jei.JEI.addItem(small_backpack_tier2);

# Middle Backpack
var middle_backpack_tier1 = <backpack:backpack:100>.withTag({slots: 24, leather_tier: "II", frame_tier: "III", slots_used: 0, module_slots: 3, slots_per_row: 9});
var middle_backpack_tier2 = <backpack:backpack:100>.withTag({slots: 36, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 3, slots_per_row: 9});
middle_backpack_tier1.addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
middle_backpack_tier2.addTooltip(format.blue("Leather Tier: " + format.yellow("II")));
mods.jei.JEI.addItem(middle_backpack_tier1);
mods.jei.JEI.addItem(middle_backpack_tier2);

# Big Backpack
var big_backpack_tier1 = <backpack:backpack:200>.withTag({slots: 36, leather_tier: "II", frame_tier: "III", slots_used: 0, module_slots: 6, slots_per_row: 9});
var big_backpack_tier2 = <backpack:backpack:200>.withTag({slots: 54, leather_tier: "III", frame_tier: "III", slots_used: 0, module_slots: 6, slots_per_row: 9});
big_backpack_tier1.addTooltip(format.blue("Leather Tier: " + format.yellow("I")));
big_backpack_tier2.addTooltip(format.blue("Leather Tier: " + format.yellow("II")));
mods.jei.JEI.addItem(big_backpack_tier1);
mods.jei.JEI.addItem(big_backpack_tier2);