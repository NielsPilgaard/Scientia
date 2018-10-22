#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.explosives;

val itemsToStage as IItemStack[] = [
    <minecraft:gunpowder>,
    <minecraft:tnt>,
    <tconstruct:throwball:1>,
    <immersiveengineering:wooden_device0:4>,
    <quark:gunpowder_block>
];

for item in itemsToStage {
     mods.ItemStages.addItemStage(stage, item);
}
