#priority 2900
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.functions.addDefaultMoltenData;
import scripts.contenttweaker.materials.customMaterials;

//Add default parts for customMaterials
var materailsForDefaultParts as Material[] = [
	customMaterials.bronze,
	customMaterials.copper,
	customMaterials.diamond,
	customMaterials.ender,
	customMaterials.gold,
	customMaterials.iron,
	customMaterials.tin,
	customMaterials.steel
];

var defaultPartNames as string[] = [
	"gear",
	"plate",
	"rod"
];

for i, metal in materailsForDefaultParts {
	metal.registerParts(defaultPartNames);
}