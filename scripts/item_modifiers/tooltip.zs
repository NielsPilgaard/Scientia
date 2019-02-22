import crafttweaker.item.IItemStack;

<campfire:campfire>.addTooltip(format.aqua("The Campfire can also cook Cobblestone and Wood Logs."));

<ore:barkWood>.addTooltip(format.aqua("Obtained by right clicking a Wood Log with a Hatchet. Does not work on Dynamic Trees."));


val backpackModItems as IItemStack[] = [
    <backpack:backpack_piece:*>,
    <backpack:backpack_frame>,
    <backpack:tanned_leather>
];

for item in backpackModItems {
    item.clearTooltip();
    item.addTooltip(format.darkBlue(format.italic("Backpack")));
}
<minecraft:leather>.clearTooltip();
<backpack:tanned_leather>.clearTooltip();

<minecraft:leather>.addTooltip(format.darkBlue(format.italic("Minecraft")));

<minecraft:leather>.addTooltip(format.darkBlue("Leather Tier: " + format.yellow("I")));
<backpack:tanned_leather>.addTooltip(format.darkBlue("Leather Tier: " + format.yellow("II")));

<backpack:backpack_frame>.clearTooltip();
/*
<backpack:backpack_piece>.withTag({leather_tier: "II", frame_tier: "III"}).clearTooltip();
<backpack:backpack_piece:1>.withTag({leather_tier: "II", frame_tier: "III"}).clearTooltip();
<backpack:backpack_piece:2>.withTag({leather_tier: "II", frame_tier: "III"}).clearTooltip();
<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}).clearTooltip();
<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}).clearTooltip();
<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}).clearTooltip();

<backpack:backpack_piece>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
<backpack:backpack_piece:1>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
<backpack:backpack_piece:2>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue(format.italic("Backpack")));
*/
<backpack:backpack_piece>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece:1>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece:2>.withTag({leather_tier: "II", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("I")));
<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("II")));
<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("II")));
<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}).addTooltip(format.darkBlue("Leather Tier: " + format.yellow("II")));