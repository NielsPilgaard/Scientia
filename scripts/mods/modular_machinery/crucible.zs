#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

var machineName = "brick_crucible";

var glass_processing_time as int = 100;
var base_processing_time as int = 100;

var fluidFromOre as int = 144;
var fluidfromDenseOre as int = fluidFromOre * 2;
var fluidFromPoorOre as int = fluidFromOre / 4;

for sand in <ore:sand>.items {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_liquid_glass_" + sand.definition.name, machineName, glass_processing_time)
	.addFluidOutput(<liquid:glass> * 1000)
	.addItemInput(sand)
	.build();
}

for metal in materials {
	if (!isNull(materials[metal].liquid)) {
		var liquid = materials[metal].liquid;

		if (!isNull(materials[metal].ore)) {
			var ore = materials[metal].ore.items[0];

			mods.modularmachinery.RecipeBuilder.newBuilder(machineName + formatRecipeName(ore.name) + "ore_to_liquid", machineName, base_processing_time)
			.addFluidOutput(liquid.liquids[0] as ILiquidStack * fluidFromOre)
			.addItemInput(ore)
			.build();
		}

		if (!isNull(materials[metal].ore_deposit)) {
			var ore_deposit = materials[metal].ore_deposit.items[0];

			mods.modularmachinery.RecipeBuilder.newBuilder(machineName + formatRecipeName(ore_deposit.name) + "ore_deposit_to_liquid", machineName, base_processing_time / 2)
			.addFluidOutput(liquid.liquids[0] as ILiquidStack * fluidFromPoorOre)
			.addItemInput(ore_deposit)
			.build();
		}
	}
}

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_clay_ball_to_liquid", machineName, base_processing_time / 4)
	.addFluidOutput(<liquid:clay> * 144)
	.addItemInput(<minecraft:clay_ball>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_clay_to_liquid", machineName, base_processing_time)
	.addFluidOutput(<liquid:clay> * 576)
	.addItemInput(<minecraft:clay>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_stone_to_liquid", machineName, base_processing_time)
	.addFluidOutput(<liquid:stone> * 144)
	.addItemInput(<ore:stone>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_cobblestone_to_liquid", machineName, base_processing_time)
	.addFluidOutput(<liquid:stone> * 144)
	.addItemInput(<ore:cobblestone>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_grout_to_liquid", machineName, (base_processing_time / 2))
	.addFluidOutput(<liquid:stone> * 144)
	.addItemInput(<tconstruct:soil>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_aluminum_brass_from_ores", machineName, base_processing_time)
	.addFluidOutput(materials.aluminum_brass.liquid.liquids[0] * (fluidFromOre * 4))
	.addItemInput(materials.copper.ore.items[0])
	.addItemInput(materials.aluminum.ore.items[0] * 3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_aluminum_brass_from_ingots", machineName, base_processing_time)
	.addFluidOutput(materials.aluminum_brass.liquid.liquids[0] * 576)
	.addItemInput(materials.copper.ingot.items[0])
	.addItemInput(materials.aluminum.ingot.items[0] * 3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_aluminum_brass_from_dusts", machineName, base_processing_time)
	.addFluidOutput(materials.aluminum_brass.liquid.liquids[0] * 576)
	.addItemInput(materials.copper.dust.items[0])
	.addItemInput(materials.aluminum.dust.items[0] * 3)
	.build();