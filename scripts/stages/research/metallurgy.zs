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
     <modularmachinery:blockfluidinputhatch>,
     <modularmachinery:blockfluidinputhatch:1>,
     <modularmachinery:blockfluidinputhatch:2>,
     <modularmachinery:blockfluidinputhatch:3>,
     <modularmachinery:blockfluidinputhatch:4>,
     <modularmachinery:blockfluidinputhatch:5>,
     <modularmachinery:blockfluidinputhatch:6>,
     <modularmachinery:blockfluidinputhatch:7>,
     <modularmachinery:blockfluidoutputhatch>,
     <modularmachinery:blockfluidoutputhatch:1>,
     <modularmachinery:blockfluidoutputhatch:2>,
     <modularmachinery:blockfluidoutputhatch:3>,
     <modularmachinery:blockfluidoutputhatch:4>,
     <modularmachinery:blockfluidoutputhatch:5>,
     <modularmachinery:blockfluidoutputhatch:6>,
     <modularmachinery:blockfluidoutputhatch:7>

];

for item in itemsToStage {
     stageItem(stage, item);
}

mods.recipestages.Recipes.addShapeless("tconstruct_soil_custom", stage,
<tconstruct:soil> * 8, 
[<minecraft:hardened_clay>,<ore:sand>,<ore:blockClay>,<ore:sand>]);