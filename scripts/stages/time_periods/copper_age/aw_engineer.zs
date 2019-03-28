#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.copper_age;

RecipeBuilder.get("engineer")
  .setShaped([
            [<ore:buttonWood>, <ore:plankWood>, <ore:buttonWood>],
            [<ore:plankWood>, null, <ore:plankWood>], 
            [<ore:buttonWood>, <ore:plankWood>, <ore:buttonWood>]
            ])
  .addTool(<ore:artisansHandsaw>, 30)
  .addOutput(<contenttweaker:material_part:220>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();