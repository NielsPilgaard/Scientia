#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.locomotion;

val itemsToStage as IItemStack[] = [
    <minecraft:minecart>,
    <minecraft:chest_minecart>,
    <minecraft:furnace_minecart>,
    <minecraft:tnt_minecart>,
    <minecraft:hopper_minecart>,
    <botania:poolminecart>,
    <charset:barrelcart>.withTag({})
];

for item in itemsToStage {
     mods.ItemStages.addItemStage(stage, item);
}
