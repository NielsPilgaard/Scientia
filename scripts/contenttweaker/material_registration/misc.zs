#priority 1149
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.functions.addDefaultMoltenData;
import scripts.contenttweaker.functions.addDefaultOreData;
import scripts.contenttweaker.material_registration.materials.customMaterials;

//Liquid Titanium
var fluidTitaniumData = customMaterials.titanium.registerPart("molten").getData();
fluidTitaniumData.addDataValue("density", "8000");
fluidTitaniumData.addDataValue("viscosity", "3000");
fluidTitaniumData.addDataValue("temperature", "1000");
fluidTitaniumData.addDataValue("vaporize", "false");

//Redstone Alloy
var redstoneAlloyParts as string[] = [
	"block",
	"gear",
	"ingot",
	"plate",
	"rod"
];
customMaterials.redstoneAlloy.registerParts(redstoneAlloyParts);

//Platinum
var platinumParts as string[] = [
	"block",
	"dust",
	"gear",
	"ingot",
	"plate",
	"rod"
];
customMaterials.platinum.registerParts(platinumParts);

//Invar
var invarParts as string[] = [
	"block",
	"gear",
	"ingot",
	"plate",
	"rod"
];
customMaterials.invar.registerParts(invarParts);