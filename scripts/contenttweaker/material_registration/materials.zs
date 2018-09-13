#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static customMaterials as Material[string] = {
	"aquamarine": MaterialSystem.getMaterialBuilder().setName("Aquamarine").setColor(2009855).build(),
	"bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build(),
	"coralium": MaterialSystem.getMaterialBuilder().setName("Coralium").setColor(Color.fromHex("358b95")).build(),
	"diamond": MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9237730).build(),
	"ender": MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2869678).build(),
	"glowstone": MaterialSystem.getMaterialBuilder().setName("Glowstone").setColor(16708616).build(),
	"gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16776971).build(),
	"invar": MaterialSystem.getMaterialBuilder().setName("Invar").setColor(9872012).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14211288).build(),
	"lead": MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build(),
	"modularium": MaterialSystem.getMaterialBuilder().setName("Modularium").setColor(16730368).build(),
	"osmium": MaterialSystem.getMaterialBuilder().setName("Osmium").setColor(Color.fromHex("aabbd2")).build(),
	"platinum": MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(15066338).build(),
	"redstone": MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(9895936).build(),
	"redstoneAlloy": MaterialSystem.getMaterialBuilder().setName("Redstone Alloy").setColor(15157577).build(),
	"silver": MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4408907).build(),
	"stone": MaterialSystem.getMaterialBuilder().setName("Stone").setColor(11117475).build(),
	"titanium": MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(Color.fromHex("1c232e")).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build()
};