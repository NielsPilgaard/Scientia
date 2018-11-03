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
    <charset:barrelcart>.withTag({log: "minecraft:log;1", slab: "minecraft:wooden_slab;1"}),
    <charset:barrelcart>.withTag({log: "minecraft:log;2", slab: "minecraft:wooden_slab;2"}),
    <charset:barrelcart>.withTag({log: "minecraft:log;3", slab: "minecraft:wooden_slab;3"}),
    <charset:barrelcart>.withTag({log: "minecraft:log2;0", slab: "minecraft:wooden_slab;4"}),
    <charset:barrelcart>.withTag({log: "minecraft:log2;1", slab: "minecraft:wooden_slab;5"}),
    <charset:barrelcart>.withTag({log: "rustic:log;0", slab: "rustic:olive_slab_item;0"}),
    <charset:barrelcart>.withTag({log: "rustic:log;1", slab: "rustic:ironwood_slab_item;0"}),
    <charset:barrelcart>.withTag({log: "traverse:fir_log;0", slab: "traverse:fir_slab;0"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs;0", slab: "natura:overworld_slab;0"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs;1", slab: "natura:overworld_slab;1"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs;2", slab: "natura:overworld_slab;2"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs;3", slab: "natura:overworld_slab;3"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs2;0", slab: "natura:overworld_slab;4"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs2;1", slab: "natura:overworld_slab2;0"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs2;2", slab: "natura:overworld_slab2;1"}),
    <charset:barrelcart>.withTag({log: "natura:overworld_logs2;3", slab: "natura:overworld_slab2;2"}),
    <charset:barrelcart>.withTag({log: "natura:redwood_logs;1", slab: "natura:overworld_slab2;3"})
];

for item in itemsToStage {
     mods.ItemStages.addItemStage(stage, item);
}
