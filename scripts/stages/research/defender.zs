#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.defender;

mods.ItemStages.addItemStage(stage, <spartanshields:shield_basic_wood>);

RecipeBuilder.get("carpenter")
  .setShaped([
        [null, <ore:plankWood>, <ore:plankWood>],
        [<ore:plankWood>, <spartanweaponry:material>, <ore:plankWood>], 
        [<ore:plankWood>, <ore:plankWood>, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansKnife>, 30)
  .addOutput(<spartanshields:shield_basic_wood>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();