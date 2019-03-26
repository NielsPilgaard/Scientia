#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.metallurgy;

val itemsToStage as IItemStack[] = [

     <tconstruct:casting>,
     <tconstruct:casting:1>,
     <tconstruct:channel>,
     <tconstruct:faucet>,
     <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:brick_crucible"}),
     <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:dried_brick_high_oven"}),
     <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:brick_high_oven"}),
     <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:stone_brick_crucible"}),
     <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:stone_brick_high_oven"}),
     <modularmachinery:blockfluidinputhatch:*>,
     <modularmachinery:blockfluidoutputhatch:*>

];

for item in itemsToStage {
     stageItem(stage, item);
}

mods.recipestages.Recipes.addShapeless("tconstruct_soil_custom", stage,
<tconstruct:soil> * 8, 
[<ore:hardenedClay>,<ore:sand>,<ore:blockClay>,<ore:sand>]);