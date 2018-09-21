#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static customMaterials as Material[string] = {
	"bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13507040).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15807020).build(),
	"diamond": MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9208030).build(),
	"ender": MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2870680).build(),
	"gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16807070).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14221090).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4408900).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10305090).build()
};