#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val removals = [
    <harvestcraft:saltitem>,

    <minecraft:dye:15>,
    <minecraft:flint>,
    <minecraft:lead>,
    <minecraft:leather>,
    <minecraft:paper>,
    <minecraft:string>,
    <minecraft:stick>,
    
    <pickletweaks:grass_mesh>,
    
    <primal_tech:fibre_torch>,
    <primal_tech:fire_sticks>,

    <spartanshields:shield_basic_wood>,

    <tconstruct:tooltables:*>,
    <tconstruct:rack:*>

] as IItemStack[];

val oredictRemovals = [
    
    <ore:plankWood>,
    <ore:stairWood>,
    <ore:slabWood>,
    #<ore:chestWood>,
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
    <ore:chairWood>

] as IOreDictEntry[];

for item in removals {
    recipes.remove(item);
}

for item in oredictRemovals {
    recipes.remove(item);
}