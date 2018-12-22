#priority 2900
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.customMaterials;
import scripts.contenttweaker.functions.defaultMoltenData;

var materialsForProcessingParts as Material[] = [

	customMaterials.copper,
	customMaterials.diamond,
	customMaterials.ender_pearl,
	customMaterials.gold,
	customMaterials.iron,
	customMaterials.steel,
	customMaterials.emerald,
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

var processingPartNames as string[] = [
	"gear",
	"plate",
	"rod"
];

var defaultPartNames as string[] = [
	"ingot",
	"dust",
	"nugget",
	"block"
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

for i, material in materialsForDust {
	material.registerPart("dust");
}

for material in materialsForMolten {
	var molten = material.registerPart("molten").getData();
	defaultMoltenData(molten);
}

customMaterials.ender_pearl.registerPart("block");