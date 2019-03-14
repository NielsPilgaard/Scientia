#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var stage = stages.stone_age;

val itemsToStage as IItemStack[] = [

	<backpack:bound_leather>,
	<backpack:tanned_leather>,

	<contenttweaker:soaked_leather>,
	<contenttweaker:processed_hide>,
	
	<gamestagebooks:novice_tinkerer>,
	<gamestagebooks:apprentice_tinkerer>,
	<gamestagebooks:novice_miner>,
	<gamestagebooks:novice_carpenter>,
	<gamestagebooks:skilled_carpenter>,
	<gamestagebooks:writing>,
	<gamestagebooks:agriculture>,
	
	<inspirations:path>,
	<inspirations:path:1>,
	<inspirations:path:2>,
	<inspirations:path:3>,

	<minecraft:leather>,
	
	<primal_tech:stone_anvil>,
	<primal_tech:fire_sticks>,
	<primal_tech:stone_mallet>,

	<tconstruct:tooltables>,
	
	<waystones:waystone>
];

for item in itemsToStage {
	addItemStage(stage, item);
}

for item in <ore:cauldronWood>.items {
	addItemStage(stage, item);
}

for item in <ore:cauldronStone>.items {
	addItemStage(stage, item);
}