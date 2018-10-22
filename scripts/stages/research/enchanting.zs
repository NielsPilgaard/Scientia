#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.enchanting;

val enchantingItems = [

    <ancientwarfareautomation:worksite_upgrade:4>,
    <ancientwarfareautomation:worksite_upgrade:5>,

    <botania:enchanter>,

    <minecraft:enchanted_book>,
    <minecraft:enchanted_book>.withTag({}),
    <minecraft:enchanting_table>
    
] as IItemStack[];

for item in enchantingItems {
    mods.ItemStages.addItemStage(stage, item);
}