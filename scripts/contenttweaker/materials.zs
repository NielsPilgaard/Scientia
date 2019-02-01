#priority 2999
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static customMaterials as Material[string] = {
	"gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16776971).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14211288).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(Color.fromHex("89510d")).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build(),
	"aluminum": MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(Color.fromHex("b2bcc4")).build(),
	"lead": MaterialSystem.getMaterialBuilder().setName("Lead").setColor(Color.fromHex("38375b")).build(),
	"silver": MaterialSystem.getMaterialBuilder().setName("Silver").setColor(Color.fromHex("c8c7e0")).build(),
	"nickel": MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(Color.fromHex("d1c3b1")).build(),
	"uranium": MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(Color.fromHex("314736")).build(),
	"platinum": MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(Color.fromHex("3a9ba8")).build(),
	"iridium": MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(Color.fromHex("dfdee8")).setHasEffect(true).build(),
	"coal": MaterialSystem.getMaterialBuilder().setName("Coal").setColor(Color.fromHex("232326")).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(Color.fromHex("2828b7")).build(),
	"ardite": MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(Color.fromHex("b25110")).build(),
	"aluminum_brass": MaterialSystem.getMaterialBuilder().setName("Aluminum Brass").setColor(Color.fromHex("e5c93b")).build(),

	"adamantium": MaterialSystem.getMaterialBuilder().setName("Adamantium").setColor(Color.fromHex("137760")).build(),
	"chrome": MaterialSystem.getMaterialBuilder().setName("Chrome").setColor(Color.fromHex("778481")).build(),
	"manganese": MaterialSystem.getMaterialBuilder().setName("manganese").setColor(Color.fromHex("562b15")).build(),
	"tungsten": MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(Color.fromHex("3d3b3a")).build(),

	"diamond": MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9237730).build(),
	"ender_pearl": MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2870680).build(),
	"emerald": MaterialSystem.getMaterialBuilder().setName("Emerald").setColor(Color.fromHex("21ce43")).build(),
	"redstone": MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(Color.fromHex("a30808")).build(),
	"lapis": MaterialSystem.getMaterialBuilder().setName("Lapis").setColor(Color.fromHex("1b09a3")).build(),
	"quartz": MaterialSystem.getMaterialBuilder().setName("Quartz").setColor(Color.fromHex("fffff7")).build(),
	"glowstone": MaterialSystem.getMaterialBuilder().setName("Glowstone").setColor(Color.fromHex("f2f213")).build(),

	"stainless_steel" : MaterialSystem.getMaterialBuilder().setName("Stainless Steel").setColor(Color.fromHex("c9cdd3")).build(),
	"invar": MaterialSystem.getMaterialBuilder().setName("Invar").setColor(Color.fromHex("bdc6c9")).build(),
	"electrum": MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(Color.fromHex("d3c34a")).build(),
	"constantan": MaterialSystem.getMaterialBuilder().setName("Constantan").setColor(Color.fromHex("ad5151")).build(),
	"manyullyn": MaterialSystem.getMaterialBuilder().setName("Manyullyn").setColor(Color.fromHex("6a0e8c")).build(),
	"bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(Color.fromHex("5d687a")).build(),

	"lithium": MaterialSystem.getMaterialBuilder().setName("Lithium").setColor(Color.fromHex("e6efee")).build(),
	"posirite": MaterialSystem.getMaterialBuilder().setName("Posirite").setColor(Color.fromHex("107fe8")).build(),
	"negarite": MaterialSystem.getMaterialBuilder().setName("Negarite").setColor(Color.fromHex("dfea44")).build(),

	"wood": MaterialSystem.getMaterialBuilder().setName("Wood").setColor(Color.fromHex("6b3905")).build()

};