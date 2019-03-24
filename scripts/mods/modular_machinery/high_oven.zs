#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

# This script contains recipes for all variants of high ovens.

var machineName = "brick_high_oven";
var processing_time as int = 100;

var furnaceRecipes as IItemStack[IItemStack] = {
	<minecraft:stone> : <minecraft:cobblestone:*>,
	<botania:biomestonea:1> : <botania:biomestonea:9>,
	<harvestcraft:snailcookeditem> : <harvestcraft:snailrawitem:*>,
	<harvestcraft:clamcookeditem> : <harvestcraft:clamrawitem:*>,
	<botania:biomestonea:6> : <botania:biomestonea:14>,
	<rustic:tallow> : <minecraft:rotten_flesh>,
	<harvestcraft:shrimpcookeditem> : <harvestcraft:shrimprawitem:*>,
	<minecraft:sponge> : <minecraft:sponge:1>,
	<traverse:blue_rock> : <traverse:blue_rock_cobblestone>,
	<minecraft:cooked_fish:1> : <minecraft:fish:1>,
	<backpack:tanned_leather> : <backpack:bound_leather>,
	<minecraft:cooked_porkchop> : <minecraft:porkchop:*>,
	<minecraft:lime_glazed_terracotta> : <minecraft:stained_hardened_clay:5>,
	<minecraft:purple_glazed_terracotta> : <minecraft:stained_hardened_clay:10>,
	<minecraft:netherbrick> : <minecraft:netherrack:*>,
	<botania:biomestonea:2> : <botania:biomestonea:10>,
	<immersiveengineering:material:19> : <immersiveengineering:material:18>,
	<tconstruct:brownstone:4> : <tconstruct:brownstone:3>,
	<harvestcraft:oystercookeditem> : <harvestcraft:oysterrawitem:*>,
	<minecraft:cooked_beef> : <minecraft:beef:*>,
	<harvestcraft:calamaricookeditem> : <harvestcraft:calamarirawitem:*>,
	<minecraft:blue_glazed_terracotta> : <minecraft:stained_hardened_clay:11>,
	<tconstruct:materials:11> : <tconstruct:soil:5>,
	<minecraft:white_glazed_terracotta> : <minecraft:stained_hardened_clay>,
	<minecraft:cyan_glazed_terracotta> : <minecraft:stained_hardened_clay:9>,
	<harvestcraft:turkeycookeditem> : <harvestcraft:turkeyrawitem:*>,
	<minecraft:brick> : <minecraft:clay_ball:*>,
	<minecraft:yellow_glazed_terracotta> : <minecraft:stained_hardened_clay:4>,
	<harvestcraft:duckcookeditem> : <harvestcraft:duckrawitem:*>,
	<tconstruct:soil:4> : <tconstruct:soil:3>,
	<minecraft:green_glazed_terracotta> : <minecraft:stained_hardened_clay:13>,
	<minecraft:hardened_clay> : <minecraft:clay:*>,
	<minecraft:bread> : <harvestcraft:doughitem>,
	<traverse:red_rock> : <traverse:red_rock_cobblestone>,
	<minecraft:stonebrick:2> : <minecraft:stonebrick>,
	<botania:biomestonea> : <botania:biomestonea:8>,
	<minecraft:cooked_chicken> : <minecraft:chicken:*>,
	<minecraft:brown_glazed_terracotta> : <minecraft:stained_hardened_clay:12>,
	<familiarfauna:venison_cooked> : <familiarfauna:venison_raw:*>,
	<botania:biomestonea:7> : <botania:biomestonea:15>,
	<tconstruct:materials> : <tconstruct:soil>,
	<minecraft:red_glazed_terracotta> : <minecraft:stained_hardened_clay:14>,
	<tconstruct:brownstone> : <tconstruct:brownstone:1>,
	<minecraft:chorus_fruit_popped> : <minecraft:chorus_fruit:*>,
	<minecraft:gray_glazed_terracotta> : <minecraft:stained_hardened_clay:7>,
	<minecraft:light_blue_glazed_terracotta> : <minecraft:stained_hardened_clay:3>,
	<tconstruct:seared:4> : <tconstruct:seared:3>,
	<minecraft:cooked_fish> : <minecraft:fish>,
	<minecraft:orange_glazed_terracotta> : <minecraft:stained_hardened_clay:1>,
	<minecraft:silver_glazed_terracotta> : <minecraft:stained_hardened_clay:8>,
	<minecraft:baked_potato> : <minecraft:potato:*>,
	<harvestcraft:musselcookeditem> : <harvestcraft:musselrawitem:*>,
	<familiarfauna:turkey_leg_cooked> : <familiarfauna:turkey_leg_raw:*>,
	<botania:biomestonea:5> : <botania:biomestonea:13>,
	<minecraft:cooked_rabbit> : <minecraft:rabbit:*>,
	<minecraft:magenta_glazed_terracotta> : <minecraft:stained_hardened_clay:2>,
	<botania:biomestonea:3> : <botania:biomestonea:11>,
	<botania:biomestonea:4> : <botania:biomestonea:12>,
	<minecraft:pink_glazed_terracotta> : <minecraft:stained_hardened_clay:6>,
	<minecraft:black_glazed_terracotta> : <minecraft:stained_hardened_clay:15>,
	<minecraft:cooked_mutton> : <minecraft:mutton:*>,
	<harvestcraft:frogcookeditem> : <harvestcraft:frograwitem:*>,
	<harvestcraft:venisoncookeditem> : <harvestcraft:venisonrawitem:*>
};

for output, input in furnaceRecipes {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_" + formatRecipeName(output.name), machineName, processing_time)
	.addItemOutput(output)
	.addItemInput(input)
	.build();
}

for item in <ore:logWood>.items {
	mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_minecraft_coal_1_" + item.name, machineName, processing_time)
	.addItemOutput(<minecraft:coal:1>)
	.addItemInput(item)
	.build();
}