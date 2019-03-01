#priority 1000
#modloaded worldgenindicators
import mods.worldgenindicators.BlockChecker;
import mods.worldgenindicators.WorldGenManager;
import mods.worldgenindicators.SurfaceIndicator;
import mods.worldgenindicators.RelativeSurfaceIndicator;
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;

for metal in materials {

    var ore = materials[metal].ore;
    var deposit = materials[metal].ore_deposit;

    if (!isNull(ore)) {
        if (!isNull(deposit)) {
            var dirtSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            dirtSurfaceIndicator.add(deposit.items[0].asBlock());
            dirtSurfaceIndicator.add(<minecraft:dirt>.asBlock());
            dirtSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());

            var dirtBlockChecker = BlockChecker.create(0.1)
			.addWhitelistEntry(<minecraft:grass>.asBlock())
			.addWhitelistEntry(<minecraft:dirt:2>.asBlock())
            .addWhitelistEntry(<botania:altgrass:2>.asBlock())
            .addWhitelistEntry(<botania:altgrass:3>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(dirtSurfaceIndicator);
            WorldGenManager.addChecker(dirtBlockChecker);
			
			var coarseDirtSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            coarseDirtSurfaceIndicator.add(deposit.items[0].asBlock());
            coarseDirtSurfaceIndicator.add(<minecraft:dirt>.asBlock());

            var coarseDirtBlockChecker = BlockChecker.create(0.1)
			.addWhitelistEntry(<minecraft:dirt:1>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(coarseDirtSurfaceIndicator);
            WorldGenManager.addChecker(coarseDirtBlockChecker);

            var stoneSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            stoneSurfaceIndicator.add(ore.items[0].asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone:5>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:cobblestone>.asBlock());

            var stoneBlockChecker = BlockChecker.create(0.15)
			.addWhitelistEntry(<minecraft:stone>.asBlock())
			.addWhitelistEntry(<traverse:blue_rock>.asBlock())
			.addWhitelistEntry(<traverse:red_rock>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(stoneSurfaceIndicator);
            WorldGenManager.addChecker(stoneBlockChecker);
			
			var sandSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            sandSurfaceIndicator.add(deposit.items[0].asBlock());
            sandSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());

            var sandBlockChecker = BlockChecker.create(0.1)
			.addWhitelistEntry(<minecraft:sand>.asBlock())
			.addWhitelistEntry(<minecraft:sand:1>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(sandSurfaceIndicator);
            WorldGenManager.addChecker(sandBlockChecker);
        }
    }
}
