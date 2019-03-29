#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;
import mods.artisanworktables.builder.Copy;

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

RecipeBuilder.get("engineer")
  .setShaped([
            [board, board],
            [board, board], 
            [board, board]
            ])
  .addTool(<ore:artisansHandsaw>, 20)
  .setMirrored()
  .addOutput(<contenttweaker:material_part:220>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();