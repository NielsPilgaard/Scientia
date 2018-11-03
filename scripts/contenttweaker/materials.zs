#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static customMaterials as Material[string] = {
	"bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build(),
	"diamond": MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9237730).build(),
	"ender": MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2870680).build(),
	"gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16776971).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14211288).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4408907).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build()
};