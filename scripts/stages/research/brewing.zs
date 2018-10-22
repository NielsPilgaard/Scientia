#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.brewing; 

# Brewing Stage
val potions = [

    <bloodmagic:potion_flask>,
    <bloodmagic:alchemic_vial>,
    
    <botania:bloodpendant>,
    <botania:bloodpendant>.withTag({}),
    <botania:brewery>,
    <botania:brewflask>.withTag({}),
    <botania:brewvial>.withTag({}),
    <botania:incensestick>,
    <botania:incensestick>.withTag({}),

    <dynamictrees:dendropotion:*>,
    
    <forge:bucketfilled>.withTag({FluidName: "potion", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "potion_splash", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "potion_lingering", Amount: 1000}),

    <minecraft:lingering_potion>.withTag({}),
    <minecraft:potion>.withTag({}),
    <minecraft:splash_potion>.withTag({}),
    <rustic:fluid_bottle>.withTag({}),

] as IItemStack[];

for item in potions {
    mods.ItemStages.addItemStage(stage, item);
}

for item in <ore:potionShelfWood>.items {
    mods.ItemStages.addItemStage(stage, item);
}