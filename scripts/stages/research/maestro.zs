#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.maestro;

val itemsToStage as IItemStack[] = [

    <bibliocraft:discrack>,

    <industrialrenewal:record_player>,

    <minecraft:jukebox>

];

for item in itemsToStage {
     mods.ItemStages.addItemStage(stage, item);
}

mods.ItemStages.addItemStage(stage, <ore:record>);

mods.recipestages.Recipes.addShapedMirrored(
    "bibliocraft_discrack_custom", 
    stage, 
    <bibliocraft:discrack>, 
    [
        [null, <ore:record>, null],
        [<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>], 
        [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]
    ]);
