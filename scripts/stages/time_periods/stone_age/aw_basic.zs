#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.stone_age;

RecipeBuilder.get("basic")
  .setShaped([
        [<ore:string>, <ore:string>, <ore:string>],
        [<minecraft:leather>, <ore:string>, <minecraft:leather>], 
        [<ore:string>, <ore:string>, <ore:string>]
        ])
  .setMirrored()
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<backpack:bound_leather> * 1)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<harvestcraft:wovencottonitem> * 2)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:woven_fiber>, <contenttweaker:woven_fiber>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:string> * 6)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("basic")
  .setShapeless([<minecraft:wool:*>])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<minecraft:string> * 3)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("basic")
  .setShaped([
        [<minecraft:string>, <minecraft:string>],
        [<minecraft:string>, <minecraft:string>]
        ])
  .addTool(<ore:artisansNeedle>, 8)
  .addOutput(<minecraft:wool>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();