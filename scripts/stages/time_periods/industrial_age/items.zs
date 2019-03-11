#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.industrial_age;
val itemsToStage as IItemStack[] = [

	<jaff:diamond_fishing_rod>,
	
	<immersivepetroleum:speedboat>,
	<immersivepetroleum:upgrades>,
	<immersivepetroleum:upgrades:1>,
	<immersivepetroleum:upgrades:2>,
	<immersivepetroleum:upgrades:3>,
	<immersivepetroleum:upgrades:4>,
	<immersivepetroleum:oil_can>,

	<engineersdoors:door_concrete>,
	<engineersdoors:door_concrete_ornate>,
	<engineersdoors:door_concrete_reinforced>,
	<engineersdoors:door_steel>,
	<engineersdoors:door_steel_ornate>,
	<engineersdoors:door_steel_reinforced>,
	<engineersdoors:fencegate_aluminium>,
	<engineersdoors:fencegate_steel>,
	<engineersdoors:trapdoor_steel>
	
];

for item in itemsToStage {
	addItemStage(stage, item);
}