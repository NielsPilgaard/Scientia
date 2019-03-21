import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

var itemsToRemove = [
    
    <familiarfauna:ff_icon>,

    <magicalmap:map>,
    <magicalmap:structure_map>,

    <minecraft:mob_spawner>,
    <minecraft:barrier>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:structure_void>,
    <minecraft:structure_block>,
    <minecraft:command_block_minecart>,

    <modulardiversity:blockjackhatch>,

    <tombmanygraves:death_list>,

    #<waterstrainer:super_worm>
    
] as IItemStack[];

for item in itemsToRemove {
    removeAndHide(item);
}