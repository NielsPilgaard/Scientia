#priority 9999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;

import mods.recipestages.Recipes.setRecipeStage;

import mods.TinkerStages.addMaterialStage;
import mods.TinkerStages.addToolTypeStage;

import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.addDescription;

import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

global formatRecipeName as function(string)string = function(name as string) as string {
	return name.replaceAll(':','_');
};

global stageItem as function(string, IItemStack)string = function(stage as string, input as IItemStack) as string {
	addItemStage(stage, input);
	setRecipeStage(stage, input);
	return input.name + " added to stage " + stage;
};



global stageMod as function(string, string)string = function(stage as string, mod as string) as string {
	for item in loadedMods[mod].items {
		addItemStage(stage, item);
		setRecipeStage(stage, item);	
	}
	return mod + " added to stage " + stage;
};

function stageTinkersMaterial(stage as string, material as string) {
	var parts = [

		<conarm:helmet_core>.withTag({Material: material}),
		<conarm:chest_core>.withTag({Material: material}),
		<conarm:leggings_core>.withTag({Material: material}),
		<conarm:boots_core>.withTag({Material: material}),
		<conarm:armor_trim>.withTag({Material: material}),
		<conarm:armor_plate>.withTag({Material: material}),
		<conarm:polishing_kit>.withTag({Material: material}),

		<conarm:helmet>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:chestplate>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:leggings>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:boots>.withTag({TinkerData: {Materials: [material, material, material]}}),
		
		<forge:bucketfilled>.withTag({FluidName: material, Amount: 1000}),

		<tconstruct:pick_head>.withTag({Material: material}),
		<tconstruct:shovel_head>.withTag({Material: material}),
		<tconstruct:axe_head>.withTag({Material: material}),
		<tconstruct:broad_axe_head>.withTag({Material: material}),
		<tconstruct:sword_blade>.withTag({Material: material}),
		<tconstruct:large_sword_blade>.withTag({Material: material}),
		<tconstruct:hammer_head>.withTag({Material: material}),
		<tconstruct:excavator_head>.withTag({Material: material}),
		<tconstruct:kama_head>.withTag({Material: material}),
		<tconstruct:scythe_head>.withTag({Material: material}),
		<tconstruct:pan_head>.withTag({Material: material}),
		<tconstruct:sign_head>.withTag({Material: material}),
		<tconstruct:tool_rod>.withTag({Material: material}),
		<tconstruct:tough_tool_rod>.withTag({Material: material}),
		<tconstruct:binding>.withTag({Material: material}),
		<tconstruct:tough_binding>.withTag({Material: material}),
		<tconstruct:wide_guard>.withTag({Material: material}),
		<tconstruct:hand_guard>.withTag({Material: material}),
		<tconstruct:cross_guard>.withTag({Material: material}),
		<tconstruct:large_plate>.withTag({Material: material}),
		<tconstruct:knife_blade>.withTag({Material: material}),
		<tconstruct:bow_limb>.withTag({Material: material}),
		<tconstruct:arrow_head>.withTag({Material: material}),
		<tconstruct:shard>.withTag({Material: material}),
		<tconstruct:sharpening_kit>.withTag({Material: material}),

		<tconstruct:bolt_core>.withTag({TinkerData: {Materials: [material, "iron"]}}),
		<tconstruct:pickaxe>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:shovel>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:hatchet>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:mattock>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:kama>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:hammer>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:excavator>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:lumberaxe>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:scythe>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:broadsword>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:longsword>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:rapier>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:frypan>.withTag({TinkerData: {Materials: [material, material]}}),
		<tconstruct:battlesign>.withTag({TinkerData: {Materials: [material, material]}}),
		<tconstruct:cleaver>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:shortbow>.withTag({TinkerData: {Materials: [material, material, "string"]}}),
		<tconstruct:longbow>.withTag({TinkerData: {Materials: [material, material, material, "string"]}}),
		<tconstruct:crossbow>.withTag({TinkerData: {Materials: [material, material, material, "string"]}}),
		<tconstruct:arrow>.withTag({TinkerData: {Materials: ["wood", material, "feather"]}}),
		<tconstruct:shuriken>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:bolt>.withTag({TinkerData: {Materials: ["wood", material, "feather"]}})

	] as IItemStack[];

	for part in parts {
		addItemStage(stage, part);
	}
	addMaterialStage(stage, material);
}

function stageTinkersTool(stage as string, tool as IItemStack, toolString as string) {
	addItemStage(stage, tool);
	addToolTypeStage(stage, toolString);
}

function stageTinkersPart(stage as string, part as IItemStack, partString as string) {
	addItemStage(stage, <tconstruct:pattern>.withTag({PartType: partString}));
	addItemStage(stage, <tconstruct:cast>.withTag({PartType: partString}));
	addItemStage(stage, <tconstruct:clay_cast>.withTag({PartType: partString}));
	addItemStage(stage, part);
}

function disableModStageList(mod as string, stage as string, exceptions as IItemStack[]) {
	for item in loadedMods[mod].items {
		recipes.remove(item);
		addDescription(item, 
		"This item is disabled.", 
		"If you somehow obtained it, please report it on Scientia's issue tracker.", 
		"There's a link in the Game Menu and the Esc Menu.");
		addItemStage("disabled", item);
	}
	for item in exceptions {
		removeItemStage(item);
		setRecipeStage(stage, item);
		addItemStage(stage, item);
	}
}

function createGlobalArmorGroup(name as string, equipChance as double, armors as IItemStack[], stage as string) as ArmorGroup {
# Order is head, chest, legs, feet, mainhand, offhand
var group = ArmorHandler.createArmorGroup(name, equipChance);
    group.addArmor(ArmorHandler.createArmorSlot("head", armors[0], 1, 0.1));
    group.addArmor(ArmorHandler.createArmorSlot("chest", armors[1], 1, 0.1));
    group.addArmor(ArmorHandler.createArmorSlot("legs", armors[2], 1, 0.1));
    group.addArmor(ArmorHandler.createArmorSlot("feet", armors[3], 1, 0.1));
    group.addArmor(ArmorHandler.createArmorSlot("mainhand", armors[4], 1, 0.1));
    group.addArmor(ArmorHandler.createArmorSlot("offhand", armors[5], 1, 0.1));
    
    group.addGameStage(stage);

    for entity in armoreableEntities {
        group.addEntity(ArmorHandler.createArmorEntity(entity));
    } 

    return group;
}

function disableItem(item as IItemStack) {
	var output as IItemStack;
	addDescription(item, 
		"This item is disabled.", 
		"If you somehow obtained it, please report it on Scientia's issue tracker.", 
		"There's a link in the Game Menu and the Esc Menu.");
	addItemStage("disabled", item);
	furnace.remove(item);
	removeAndHide(item);

	if (!isNull(item.ores)) {
		for oredict in item.ores {
			oredict.remove(item);
		}
	}	
}