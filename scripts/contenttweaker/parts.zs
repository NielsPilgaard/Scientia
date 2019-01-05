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
	customMaterials.aluminum_brass,
	customMaterials.lithium,
	customMaterials.posirite,
	customMaterials.negarite

];

var materialsForAllParts as Material[] = [

	customMaterials.bronze,
	customMaterials.iridium,
	customMaterials.platinum,
	customMaterials.tin,
	customMaterials.invar,
	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.manganese,
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
	customMaterials.aluminum_brass,
	customMaterials.lithium,
	customMaterials.posirite,
	customMaterials.negarite

];

var materialsForMolten as Material[] = [

	customMaterials.diamond,
	customMaterials.ender_pearl,
	customMaterials.emerald,
	customMaterials.coal,
	customMaterials.redstone,
	customMaterials.lapis,
	customMaterials.quartz,
	customMaterials.glowstone,
	customMaterials.lithium,
	customMaterials.posirite,
	customMaterials.negarite

];

var materialsForOre as Material[] = [

	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.iridium,
	customMaterials.manganese,
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

var materialsForPoorAndDense as Material[] = [

	customMaterials.adamantium,
	customMaterials.chrome,
	customMaterials.iridium,
	customMaterials.manganese,
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
	customMaterials.redstone,
	customMaterials.lithium,
	customMaterials.posirite,
	customMaterials.negarite
	
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
	var oreData = material.registerPart("ore").getData();
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("hardness", "4");
	oreData.addDataValue("resistance", "30");
	oreData.addDataValue("harvestLevel", "1");
}

for material in materialsForPoorAndDense {
	var depositData = material.registerPart("poor_ore").getData();
	depositData.addDataValue("variants", "minecraft:coarse_dirt");
	depositData.addDataValue("harvestTool", "shovel");
	depositData.addDataValue("hardness", "3");
	depositData.addDataValue("resistance", "15");
	#depositData.addDataValue("soundtype", "soundtype:ground");
	depositData.addDataValue("harvestLevel", "1");

	var denseOreData = material.registerPart("dense_ore").getData();
	denseOreData.addDataValue("harvestTool", "pickaxe");
	denseOreData.addDataValue("hardness", "5");
	denseOreData.addDataValue("resistance", "15");
	denseOreData.addDataValue("harvestLevel", "1");
}

customMaterials.ender_pearl.registerPart("block");