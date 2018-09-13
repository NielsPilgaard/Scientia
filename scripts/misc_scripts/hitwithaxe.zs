import mods.hitwithaxe.Chopping;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Oak
Chopping.addRecipe("minecraft:log", 0, "hitwithaxe:debarked_oak", 1, <hitwithaxe:bark:15>); //Y Axis
Chopping.addRecipe("minecraft:log", 4, "hitwithaxe:debarked_oak", 0, <hitwithaxe:bark:15>); //X Axis
Chopping.addRecipe("minecraft:log", 8, "hitwithaxe:debarked_oak", 2, <hitwithaxe:bark:15>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_oak", 32767, <minecraft:planks>);

//Birch
Chopping.addRecipe("minecraft:log", 2, "hitwithaxe:debarked_birch", 1, <hitwithaxe:bark:2>); //Y Axis
Chopping.addRecipe("minecraft:log", 6, "hitwithaxe:debarked_birch", 0, <hitwithaxe:bark:2>); //X Axis
Chopping.addRecipe("minecraft:log", 10, "hitwithaxe:debarked_birch", 2, <hitwithaxe:bark:2>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_birch", 32767, <minecraft:planks:2>);

//Spruce
Chopping.addRecipe("minecraft:log", 1, "hitwithaxe:debarked_spruce", 1, <hitwithaxe:bark:20>); //Y Axis
Chopping.addRecipe("minecraft:log", 5, "hitwithaxe:debarked_spruce", 0, <hitwithaxe:bark:20>); //X Axis
Chopping.addRecipe("minecraft:log", 9, "hitwithaxe:debarked_spruce", 2, <hitwithaxe:bark:20>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_spruce", 32767, <minecraft:planks:1>);

//Jungle
Chopping.addRecipe("minecraft:log", 3, "hitwithaxe:debarked_jungle", 1, <hitwithaxe:bark:12>); //Y Axis
Chopping.addRecipe("minecraft:log", 7, "hitwithaxe:debarked_jungle", 0, <hitwithaxe:bark:12>); //X Axis
Chopping.addRecipe("minecraft:log", 11, "hitwithaxe:debarked_jungle", 2, <hitwithaxe:bark:12>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_jungle", 32767, <minecraft:planks:3>);

//Dark Oak
Chopping.addRecipe("minecraft:log2", 1, "hitwithaxe:debarked_dark_oak", 1, <hitwithaxe:bark:8>); //Y Axis
Chopping.addRecipe("minecraft:log2", 5, "hitwithaxe:debarked_dark_oak", 0, <hitwithaxe:bark:8>); //X Axis
Chopping.addRecipe("minecraft:log2", 9, "hitwithaxe:debarked_dark_oak", 2, <hitwithaxe:bark:8>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_dark_oak", 32767, <minecraft:planks:5>);

//Acacia
Chopping.addRecipe("minecraft:log2", 0, "hitwithaxe:debarked_acacia", 1, <hitwithaxe:bark>); //Y Axis
Chopping.addRecipe("minecraft:log2", 4, "hitwithaxe:debarked_acacia", 0, <hitwithaxe:bark>); //X Axis
Chopping.addRecipe("minecraft:log2", 8, "hitwithaxe:debarked_acacia", 2, <hitwithaxe:bark>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_acacia", 32767, <minecraft:planks:4>);
/*
//Silverwood
Chopping.addRecipe("thaumcraft:log_silverwood", 1, "hitwithaxe:debarked_silverwood", 1, <hitwithaxe:bark:18>); //Y Axis
Chopping.addRecipe("thaumcraft:log_silverwood", 0, "hitwithaxe:debarked_silverwood", 0, <hitwithaxe:bark:18>); //X Axis
Chopping.addRecipe("thaumcraft:log_silverwood", 2, "hitwithaxe:debarked_silverwood", 2, <hitwithaxe:bark:18>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_silverwood", 32767, <thaumcraft:plank_silverwood>);

//Greatwood
Chopping.addRecipe("thaumcraft:log_greatwood", 1, "hitwithaxe:debarked_greatwood", 1, <hitwithaxe:bark:10>); //Y Axis
Chopping.addRecipe("thaumcraft:log_greatwood", 0, "hitwithaxe:debarked_greatwood", 0, <hitwithaxe:bark:10>); //X Axis
Chopping.addRecipe("thaumcraft:log_greatwood", 2, "hitwithaxe:debarked_greatwood", 2, <hitwithaxe:bark:10>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_greatwood", 32767, <thaumcraft:plank_greatwood>);
*/
//Fir
Chopping.addRecipe("traverse:fir_log", 1, "hitwithaxe:debarked_fir", 1, <hitwithaxe:bark:9>); //Y Axis
Chopping.addRecipe("traverse:fir_log", 0, "hitwithaxe:debarked_fir", 0, <hitwithaxe:bark:9>); //X Axis
Chopping.addRecipe("traverse:fir_log", 2, "hitwithaxe:debarked_fir", 2, <hitwithaxe:bark:9>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_fir", 32767, <traverse:fir_planks>);

for woodtype in woodtypes {
    Chopping.addRecipe(woodtypes[woodtype].plank.items[0], woodtypes[woodtype].slab.items[0]);
}