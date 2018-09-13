import crafttweaker.item.IItemStack;

var seedsToRemove = [
	<immersiveengineering:seed>,
    <minecraft:wheat_seeds>
] as IItemStack[];

for seed in seedsToRemove {
	vanilla.seeds.removeSeed(seed);
}

vanilla.seeds.addSeed(<contenttweaker:plant_fiber> % 1800);