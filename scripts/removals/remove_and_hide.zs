import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

var itemsToRemove = [
    
    <magicalmap:map>,
    <magicalmap:structure_map>,
    
    #<minecraft:chest>, 
    
    <modularmachinery:blockinputbus>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockinputbus:6>,
    <modularmachinery:blockoutputbus>,
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockoutputbus:6>,
    <modularmachinery:blockfluidinputhatch>,
    <modularmachinery:blockfluidinputhatch:1>,
    <modularmachinery:blockfluidinputhatch:6>,
    <modularmachinery:blockfluidinputhatch:7>,
    <modularmachinery:blockfluidoutputhatch>,
    <modularmachinery:blockfluidoutputhatch:1>,
    <modularmachinery:blockfluidoutputhatch:6>,
    <modularmachinery:blockfluidoutputhatch:7>,
    <modularmachinery:blockenergyinputhatch>,
    <modularmachinery:blockenergyinputhatch:1>,
    <modularmachinery:blockenergyinputhatch:6>,
    <modularmachinery:blockenergyinputhatch:7>,
    <modularmachinery:blockenergyoutputhatch>,
    <modularmachinery:blockenergyoutputhatch:1>,
    <modularmachinery:blockenergyoutputhatch:6>,
    <modularmachinery:blockenergyoutputhatch:7>,

    <modulardiversity:blockjackhatch>,

    <waterstrainer:super_worm>,

    <tombmanygraves:death_list>,

    <familiarfauna:ff_icon>,

    <minecraft:mob_spawner>,
    <minecraft:barrier>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:structure_void>,
    <minecraft:structure_block>,
    <minecraft:command_block_minecart>
    
] as IItemStack[];

for item in itemsToRemove {
    removeAndHide(item);
}