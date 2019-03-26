#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val removals as IItemStack[] = [
    
    <backpack:backpack_piece:*>,
    <backpack:stick>,
    <backpack:backpack_frame>,
    <backpack:bound_leather>,

    <bibliocraft:handdrill>,
    <bibliocraft:framingboard>,
    <bibliocraft:framingsheet>,
    <bibliocraft:biblioclipboard>,
    <bibliocraft:discrack>,
    
    <charset:chest>.withTag({}),
    <charset:barrel>.withTag({}),
    
    <harvestcraft:flouritem>,
    <harvestcraft:almondbutteritem>,
    <harvestcraft:saltitem>,
    <harvestcraft:waterfilter>,
    <harvestcraft:wovencottonitem>,
    <harvestcraft:cheeseitem>,
    <harvestcraft:butteritem>,
    <harvestcraft:doughitem>,
    
    <minecraft:sugar>,
    <minecraft:dye:15>,
    <minecraft:flint>,
    <minecraft:lead>,
    <minecraft:leather>,
    paper,
    <minecraft:string>,
    stick,
    <minecraft:boat>,
    <minecraft:spruce_boat>,
    <minecraft:birch_boat>,
    <minecraft:jungle_boat>,
    <minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,
    <minecraft:book>,
    <minecraft:bone_block>,
    <minecraft:coal:1>,
    <minecraft:bread>,
    
    <naturesaura:ancient_stick>,
    
    <rustic:cabinet>,
    <rustic:crop_stake>,

    <sereneseasons:season_clock>,
    <sereneseasons:season_sensor_spring>,

    <spartanshields:shield_basic_wood>,

    <tconstruct:tooltables:*>,
    <tconstruct:rack:*>,
    <tconstruct:pattern>,
    <tconstruct:soil>,
    
    <waystones:waystone>

];

val oredictRemovals as IOreDictEntry[] = [
    
    <ore:wool>,
    <ore:plankWood>,
    <ore:stairWood>,
    <ore:slabWood>,
    <ore:chestWood>,
    <ore:fenceWood>,
    <ore:fenceGateWood>,
    <ore:doorWood>,
    <ore:pressurePlateWood>,
    <ore:trapdoorWood>,
    <ore:buttonWood>,
    <ore:shelfWood>,
    <ore:potionShelfWood>,
    <ore:bookcaseWood>,
    <ore:toolrackWood>,
    <ore:mapframeWood>,
    <ore:signWood>,
    <ore:labelWood>,
    <ore:tableWood>,
    <ore:chairWood>,
    <ore:seatBack>,
    <ore:furniturePanelerWood>,
    <ore:deskWood>,
    <ore:seat>,
    <ore:caseWood>,
    <ore:mapFrameWood>,
    <ore:armorStandWood>,
    <ore:doorTreatedWood>,
    <ore:bookshelf>
];

val modRemovals as string[] = [
    "morecauldrons",
    "primal_tech",
    "farmingforblockheads",
    "watercan"
];

for item in removals {
    recipes.remove(item);
}

for item in oredictRemovals {
    recipes.remove(item);
}

for mod in modRemovals {
    for item in loadedMods[mod].items {
        recipes.remove(item);
    }
}