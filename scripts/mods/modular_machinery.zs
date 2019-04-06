#priority 100
#modloaded modularmachinery
import crafttweaker.item.IItemStack;

# createItemHatches
var hopper = <minecraft:hopper>|<tconstruct:wooden_hopper>;

for i in 0 to 7 {
    # Input
    if (i == 0) {
        recipes.addShapedMirrored("modularmachinery:blockinputbus_" + i + "_custom", 
            <modularmachinery:blockinputbus>.definition.makeStack(i), 
            [[hopper],
            [<modularmachinery:blockcasing>], 
            [<ore:chestWood>]]);
    } else {
        recipes.addShapedMirrored("modularmachinery:blockinputbus_" + i + "_custom", 
            <modularmachinery:blockinputbus>.definition.makeStack(i), 
            [[hopper],
            [<modularmachinery:blockinputbus>.definition.makeStack(i - 1)], 
            [<ore:chestWood>]]);
    }

    # Output
    if (i == 0) {
        recipes.addShapedMirrored("modularmachinery:blockoutputbus_" + i + "_custom", 
            <modularmachinery:blockoutputbus>.definition.makeStack(i), 
            [[<ore:chestWood>],
            [<modularmachinery:blockcasing>], 
            [hopper]]);
    } else {
        recipes.addShapedMirrored("modularmachinery:blockoutputbus_" + i + "_custom", 
            <modularmachinery:blockoutputbus>.definition.makeStack(i), 
            [[<ore:chestWood>],
            [<modularmachinery:blockoutputbus>.definition.makeStack(i - 1)], 
            [hopper]]);
    }
}

# createFluidHatchesLowTier
var bucket = <minecraft:bucket>|<claybucket:claybucket>;

for i in 0 to 3 {
    # Input
    if (i == 0) {
        recipes.addShapedMirrored("modularmachinery:blockfluidinputhatch_" + i + "_custom", 
            <modularmachinery:blockfluidinputhatch>.definition.makeStack(i), 
            [[hopper],
            [<modularmachinery:blockcasing>], 
            [bucket]]);
    } else {
        recipes.addShapedMirrored("modularmachinery:blockfluidinputhatch_" + i + "_custom", 
            <modularmachinery:blockfluidinputhatch>.definition.makeStack(i), 
            [[hopper],
            [<modularmachinery:blockfluidinputhatch>.definition.makeStack(i - 1)], 
            [bucket]]);
    }

    # Output
    if (i == 0) {
        recipes.addShapedMirrored("modularmachinery:blockfluidoutputhatch_" + i + "_custom", 
            <modularmachinery:blockfluidoutputhatch>.definition.makeStack(i), 
            [[bucket],
            [<modularmachinery:blockcasing>], 
            [hopper]]);
    } else {
        recipes.addShapedMirrored("modularmachinery:blockfluidoutputhatch_" + i + "_custom", 
            <modularmachinery:blockfluidoutputhatch>.definition.makeStack(i), 
            [[bucket],
            [<modularmachinery:blockfluidoutputhatch>.definition.makeStack(i - 1)], 
            [hopper]]);
    }
}
# createFluidHatchesHighTier


# createEnergyHatches

# createBlueprint
function createBlueprint(machineName as string, item as IItemStack) {
    var blueprintTag as string = "modularmachinery:" + machineName;
    recipes.addShapeless("modularmachinery:itemblueprint_" + machineName + "_custom",
    <modularmachinery:itemblueprint>.withTag({dynamicmachine: blueprintTag}),
    [paper, 
    item, 
    <minecraft:coal:*>]);
}

var blueprintIngredientMap as IItemStack[string] = {
    "brick_crucible" : <morecauldrons:brick_cauldron>,
    "stone_brick_crucible" : <morecauldrons:stone_cauldron>,

    "brick_high_oven" : <minecraft:brick_block>,
    "stone_brick_high_oven" : <minecraft:stonebrick>,
    "dried_brick_high_oven" : <tconstruct:dried_clay:1>

};

for machineName, ingredient in blueprintIngredientMap {
    createBlueprint(machineName, ingredient);
}