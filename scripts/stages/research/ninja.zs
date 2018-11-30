#priority 100
import crafttweaker.item.IItemStack;

import scripts.utility.stageTinkersTool;

var stage = stages.ninja;

stageTinkersTool(stage, <tconstruct:shuriken>, "tconstruct:shuriken");
mods.ItemStages.addItemStage(stage, <rustic:rope>);

mods.recipestages.Recipes.addShapedMirrored(
    "rustic_rope_custom", 
    stage, 
    <rustic:rope> * 16, 
    [
        [null, <hooked:microcrafting:1>, null],
        [null, <hooked:microcrafting:1>, null], 
        [null, <hooked:microcrafting:1>, null]
    ]);
recipes.remove(<rustic:rope>);

for item in loadedMods["hooked"].items {
	mods.ItemStages.addItemStage(stage, item);
}