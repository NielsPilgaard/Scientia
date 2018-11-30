#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.stone_age;

RecipeBuilder.get("carpenter")
  .setShaped([
        [<ore:logWood>, stick, <ore:logWood>],
        [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
        [<ore:cobblestone>, null, <ore:cobblestone>]
        ])
  .addTool(<ore:artisansFramingHammer>, 30)
  .addOutput(<primal_tech:wooden_basin>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([stick])
  .addTool(<ore:artisansKnife>, 10)
  .addOutput(<primal_tech:fire_sticks>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

recipes.remove(<primal_tech:fire_sticks>);
recipes.remove(<primal_tech:wooden_basin>);