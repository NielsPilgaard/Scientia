#priority 1149
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.functions.addDefaultMoltenData;
import scripts.contenttweaker.functions.addDefaultOreData;
import scripts.contenttweaker.material_registration.materials.customMaterials;

//Add default parts for customMaterials
var materailsForDefaultParts as Material[] = [
	customMaterials.bronze,
	customMaterials.cobalt,
	customMaterials.copper,
	customMaterials.lead,
	customMaterials.modularium,
	customMaterials.silver,
	customMaterials.tin
];

var defaultPartNames as string[] = [
	"gear",
	"plate",
	"rod"
];

for i, metal in materailsForDefaultParts {
	metal.registerParts(defaultPartNames);
}

//Apply Molten to customMaterials
var fluidcustomMaterials as Material[] = [
	customMaterials.invar,
	customMaterials.modularium,
	customMaterials.osmium,
	customMaterials.platinum,
	customMaterials.redstoneAlloy,
];

for i, fluid in fluidcustomMaterials {
	var fluidcustomMaterialsData as MaterialPartData = fluid.registerPart("molten").getData();
	addDefaultMoltenData(fluidcustomMaterialsData);
}

//Custom gears to keep the same look
var gearMaterialList as Material[] = [
	customMaterials.diamond,
	customMaterials.gold,
	customMaterials.iron,
	customMaterials.steel
];

for material in gearMaterialList {
	material.registerPart("gear");
}
