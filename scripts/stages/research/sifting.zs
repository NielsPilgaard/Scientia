#priority 100
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.sifting;

mods.ItemStages.addItemStage(stage, <ore:artisansSifter>);
mods.recipestages.Recipes.setRecipeStage(stage, <ore:artisansSifter>);
mods.ItemStages.addItemStage(stage, <harvestcraft:waterfilter>);

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:gravel>])
  .addTool(<ore:artisansSifter>, 2)
  .addOutput(<minecraft:flint>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# Pams Waterfilter
mods.recipestages.Recipes.addShapedMirrored("harvestcraft_waterfilter_custom", stage, 
<harvestcraft:waterfilter>, 
[[<minecraft:stone:*>, <ore:materialCloth>, <minecraft:stone:*>],
[<minecraft:stone:*>, <ore:artisansSifter>, <minecraft:stone:*>], 
[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);