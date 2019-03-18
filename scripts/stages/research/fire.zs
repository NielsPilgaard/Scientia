#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.fire;

val items as IItemStack[] = [
    
    <campfire:campfire>,

    <familiarfauna:turkey_leg_cooked>,
    <familiarfauna:venison_cooked>,
    <harvestcraft:clamcookeditem>,
    <harvestcraft:frogcookeditem>,
    <harvestcraft:shrimpcookeditem>,
    <harvestcraft:snailcookeditem>,
    <harvestcraft:oystercookeditem>,
    <harvestcraft:turkeycookeditem>,
    <harvestcraft:venisoncookeditem>,
    <harvestcraft:musselcookeditem>,
    <harvestcraft:duckcookeditem>,
    <harvestcraft:calamaricookeditem>,
    
    <minecraft:torch>,
    <minecraft:fire_charge>,
    <minecraft:cooked_fish>,
    <minecraft:cooked_fish:1>,
    <minecraft:cooked_chicken>,
    <minecraft:cooked_rabbit>,
    <minecraft:cooked_mutton>,
    <minecraft:cooked_beef>,
    <minecraft:cooked_porkchop>,
    
    <primal_tech:charcoal_block>,
    <primal_tech:fibre_torch>,
    <primal_tech:fibre_torch_lit>,
    <primal_tech:stone_grill>
    
];

for item in items {
    mods.ItemStages.addItemStage(stage, item);
}