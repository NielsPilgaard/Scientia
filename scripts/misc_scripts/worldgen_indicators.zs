#priority 1000
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
            dirtSurfaceIndicator.add(<minecraft:dirt>.asBlock());
            dirtSurfaceIndicator.add(<minecraft:grass>.asBlock());
            dirtSurfaceIndicator.add(<minecraft:grass>.asBlock());
            dirtSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());

            var dirtBlockChecker = BlockChecker.create(1)
			.addWhitelistEntry(<minecraft:dirt>.asBlock())
			.addWhitelistEntry(<minecraft:dirt:1>.asBlock())
			.addWhitelistEntry(<minecraft:grass>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(dirtSurfaceIndicator);
            WorldGenManager.addChecker(dirtBlockChecker);

            var stoneSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            
            stoneSurfaceIndicator.add(ore.items[0].asBlock());
            stoneSurfaceIndicator.add(<minecraft:stone>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone>.asBlock());
            stoneSurfaceIndicator.add(<minecraft:stone>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone:5>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:stone:5>.asBlock());
			stoneSurfaceIndicator.add(<minecraft:cobblestone>.asBlock());
            stoneSurfaceIndicator.add(<minecraft:cobblestone>.asBlock());
            stoneSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());

            var stoneBlockChecker = BlockChecker.create(1)
			.addWhitelistEntry(<minecraft:stone>.asBlock())
			.addWhitelistEntry(<minecraft:cobblestone>.asBlock())
			.addWhitelistEntry(<minecraft:stone:5>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(stoneSurfaceIndicator);
            WorldGenManager.addChecker(stoneBlockChecker);
			
			var sandSurfaceIndicator = RelativeSurfaceIndicator.create(-1);
            
            sandSurfaceIndicator.add(deposit.items[0].asBlock());
            sandSurfaceIndicator.add(<minecraft:sand>.asBlock());
            sandSurfaceIndicator.add(<minecraft:sand>.asBlock());
            sandSurfaceIndicator.add(<minecraft:sand>.asBlock());
            sandSurfaceIndicator.add(<minecraft:sand>.asBlock());
			sandSurfaceIndicator.add(<minecraft:sand>.asBlock());
            sandSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());
            sandSurfaceIndicator.add(<minecraft:dirt:1>.asBlock());

            var sandBlockChecker = BlockChecker.create(1)
			.addWhitelistEntry(<minecraft:sand>.asBlock())
			.addValid(ore.items[0].asBlock())
			.addIndicator(sandSurfaceIndicator);
            WorldGenManager.addChecker(sandBlockChecker);
        }
    }
}
