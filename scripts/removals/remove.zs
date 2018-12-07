#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val removals = [
    <bibliocraft:handdrill>,
    <bibliocraft:framingboard>,
    <bibliocraft:framingsheet>,
    <bibliocraft:biblioclipboard>,
    <bibliocraft:discrack>,
    
    <charset:chest>.withTag({}),
    <charset:barrel>.withTag({}),

    <harvestcraft:saltitem>,
    <harvestcraft:waterfilter>,
    <harvestcraft:wovencottonitem>,

    <minecraft:dye:15>,
    <minecraft:flint>,
    <minecraft:lead>,
    <minecraft:leather>,
    paper,
    <minecraft:string>,
    stick,
    
    <pickletweaks:grass_mesh>,
    <pickletweaks:mesh>,
    
    <primal_tech:fibre_torch>,
    <primal_tech:fire_sticks>,
    <primal_tech:wooden_basin>,

    <rustic:cabinet>,

    <spartanshields:shield_basic_wood>,

    <tconstruct:tooltables:*>,
    <tconstruct:rack:*>

] as IItemStack[];

val oredictRemovals = [
    
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
    <ore:armorStandWood>

] as IOreDictEntry[];

for item in removals {
    recipes.remove(item);
}

for item in oredictRemovals {
    recipes.remove(item);
}