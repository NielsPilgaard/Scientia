#priority 1000
import mods.worldgenindicators.BlockChecker;
import mods.worldgenindicators.WorldGenManager;
import mods.worldgenindicators.SurfaceIndicator;
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;

for metal in materials {

    var ore = materials[metal].ore;
    var deposit = materials[metal].ore_deposit;

    if (!isNull(ore)) {
        if (!isNull(deposit)) {
            var surfaceIndicator = SurfaceIndicator.create().add(deposit.items[0].asBlock());
            var blockChecker = BlockChecker.create(1.0).addValid(ore.items[0].asBlock()).addIndicator(surfaceIndicator);
            WorldGenManager.addChecker(blockChecker);
        }
    }
}
