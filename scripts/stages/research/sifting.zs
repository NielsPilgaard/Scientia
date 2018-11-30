#priority 100
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;

var stage = stages.sifting;

Recipes.addShapedMirrored("pickletweaks_mesh_custom", stage, 
<pickletweaks:mesh>, 
[[<minecraft:stick>, <minecraft:string>, <minecraft:stick>], 
[<minecraft:string>, <minecraft:string>, <minecraft:string>], 
[<minecraft:stick>, <minecraft:string>, <minecraft:stick>]]);
addItemStage(stage, <pickletweaks:mesh>);

Recipes.addShapeless("minecraft_flint_custom", stage, 
<minecraft:flint>, 
[<pickletweaks:mesh>.anyDamage(),<ore:gravel>]);

Recipes.addShapedMirrored("harvest_waterfilter_custom", stage, 
<harvestcraft:waterfilter>, 
[[<minecraft:stone:*>, <ore:materialCloth>, <minecraft:stone:*>],
[<minecraft:stone:*>, <pickletweaks:mesh>.anyDamage(), <minecraft:stone:*>], 
[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);
addItemStage(stage, <harvestcraft:waterfilter>);


# Pams Waterfilter