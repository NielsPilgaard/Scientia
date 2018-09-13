#priority 100
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;

var stage = stages.sifting;

Recipes.addShapedMirrored("pickletweaks_grass_mesh_custom", stage, 
<pickletweaks:grass_mesh>, 
[[<ore:stickWood>, <contenttweaker:plant_fiber>, <ore:stickWood>],
[<contenttweaker:plant_fiber>, <contenttweaker:plant_fiber>, <contenttweaker:plant_fiber>], 
[<ore:stickWood>, <contenttweaker:plant_fiber>, <ore:stickWood>]]);
addItemStage(stage, <pickletweaks:grass_mesh>);

Recipes.addShapeless("minecraft_flint_custom", stage, 
<minecraft:flint>, 
[<pickletweaks:grass_mesh>.anyDamage(),<ore:gravel>]);

# Pams Waterfilter