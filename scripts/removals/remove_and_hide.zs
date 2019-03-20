import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

var itemsToRemove = [
    
    <magicalmap:map>,
    <magicalmap:structure_map>,

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