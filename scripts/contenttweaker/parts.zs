#priority 2900
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.customMaterials;
import scripts.contenttweaker.functions.defaultMoltenData;

var materialsForProcessingParts as Material[] = [

	customMaterials.copper,
	customMaterials.gold,
	customMaterials.iron,
	customMaterials.steel,
	customMaterials.aluminum,
	customMaterials.lead,
	customMaterials.silver,
	customMaterials.nickel,
	customMaterials.uranium,
	customMaterials.constantan,
	customMaterials.electrum,
	customMaterials.cobalt,
	customMaterials.ardite,
	customMaterials.manyullyn,
	customMaterials.aluminum_brass

];

var materialsForAllParts as Material[] = [

	customMaterials.bronze,
	customMaterials.iridium,
	customMaterials.platinum,
	customMaterials.tin,
	customMaterials.invar,
	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.manganeese,
	customMaterials.tungsten,
	customMaterials.stainless_steel

];

var materialsForDust as Material[] = [

	customMaterials.diamond,
	customMaterials.ender_pearl,
	customMaterials.gold,
	customMaterials.iron,
	customMaterials.emerald,
	customMaterials.coal,
	customMaterials.lapis,
	customMaterials.quartz,
	customMaterials.ardite,
	customMaterials.cobalt,
	customMaterials.manyullyn,
	customMaterials.aluminum_brass

];

var materialsForMolten as Material[] = [

	customMaterials.diamond,
	customMaterials.ender_pearl,
	customMaterials.emerald,
	customMaterials.coal,
	customMaterials.redstone,
	customMaterials.lapis,
	customMaterials.quartz,
	customMaterials.glowstone

];

var materialsForOre as Material[] = [

	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.iridium,
	customMaterials.manganeese,
	customMaterials.platinum,
	customMaterials.tin,
	customMaterials.tungsten,
	customMaterials.copper,
	customMaterials.aluminum,
	customMaterials.uranium,
	customMaterials.silver,
	customMaterials.lead,
	customMaterials.nickel

];

var materialsForDeposit as Material[] = [

	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.iridium,
	customMaterials.manganeese,
	customMaterials.platinum,
	customMaterials.tin,
	customMaterials.tungsten,
	customMaterials.copper,
	customMaterials.aluminum,
	customMaterials.uranium,
	customMaterials.silver,
	customMaterials.lead,
	customMaterials.nickel,
	customMaterials.iron,
	customMaterials.coal,
	customMaterials.diamond,
	customMaterials.emerald,
	customMaterials.gold,
	customMaterials.lapis,
	customMaterials.redstone
	
];

var processingPartNames as string[] = [
	"gear",
	"plate",
	"rod"
];

var defaultPartNames as string[] = [
	"ingot",
	"dust",
	"nugget",
	"block",
];

for i, material in materialsForProcessingParts {
	material.registerParts(processingPartNames);
}

for i, material in materialsForAllParts {
	material.registerParts(processingPartNames);
	material.registerParts(defaultPartNames);
	var molten = material.registerPart("molten").getData();
	defaultMoltenData(molten);
}

for material in materialsForDust {
	material.registerPart("dust");
}

for material in materialsForMolten {
	var molten = material.registerPart("molten").getData();
	defaultMoltenData(molten);
}

for material in materialsForOre {
	material.registerPart("ore");
}

/*for material in materialsForDeposit {
	var oreData = material.registerPart("ore").getData();
	oreData.addDataValue("variants", "minecraft:dirt:1");
	oreData.addDataValue("harvestTool", "shovel");
}*/

for material in materialsForDeposit {
	var oreData = material.registerPart("poor_ore").getData();
	oreData.addDataValue("variants", "minecraft:coarse_dirt");
	oreData.addDataValue("harvestTool", "shovel");
}

customMaterials.ender_pearl.registerPart("block");