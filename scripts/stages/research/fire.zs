#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.fire;

val items = [
    
    <campfire:campfire>,

    <minecraft:torch>,
    <minecraft:fire_charge>,

    <primal_tech:charcoal_block>,
    <primal_tech:fibre_torch>,
    <primal_tech:fibre_torch_lit>,
    <primal_tech:stone_grill>
    
] as IItemStack[];

for item in items {
    mods.ItemStages.addItemStage(stage, item);
}