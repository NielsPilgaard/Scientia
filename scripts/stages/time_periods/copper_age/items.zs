#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.copper_age;
val itemsToStage as IItemStack[] = [

    <ancientwarfare:wooden_hammer>,
    <ancientwarfare:stone_hammer>,
    <ancientwarfare:iron_hammer>,
    <ancientwarfare:gold_hammer>,
    <ancientwarfare:diamond_hammer>,
	<ancientwarfare:backpack>,
	<ancientwarfare:backpack:1>,
	<ancientwarfare:backpack:2>,
	<ancientwarfare:backpack:3>,
    <ancientwarfarenpc:food_bundle>,

    <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:research_station_tier_1"}),
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockcontroller>,
    
	<tconstruct:cast>
	
];

for item in itemsToStage {
	addItemStage(stage, item);
}