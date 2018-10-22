#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.adaptive_armor;

val armorModifiers = [
    
    <bloodmagic:upgrade_tome>.withTag({}),
    <bloodmagic:sentient_armour_boots>,
    <bloodmagic:sentient_armour_chest>,
    <bloodmagic:sentient_armour_gem>,
    <bloodmagic:sentient_armour_helmet>,
    <bloodmagic:sentient_armour_leggings>,

    <bloodmagic:living_armour_boots>,
    <bloodmagic:living_armour_chest>,
    <bloodmagic:living_armour_helmet>,
    <bloodmagic:living_armour_leggings>,

    <bloodmagic:sentient_armour_gem>

] as IItemStack[];

for item in armorModifiers {
    mods.ItemStages.addItemStage(stage, item);
}