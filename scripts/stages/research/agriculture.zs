#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

import scripts.utility.stageTinkersTool;

var stage = stages.agriculture;

mods.ItemStages.addItemStage(stage, <rustic:crop_stake>);

stageTinkersTool(stage, <tconstruct:mattock>, "tconstruct:mattock");

RecipeBuilder.get("carpenter")
  .setShapeless(<contenttweaker:plant_fiber>)
  .addTool(<ore:artisansKnife>, 2)
  .addOutput(<minecraft:carrots>)
  .addOutput(<minecraft:potatoes>)
  .addOutput(<minecraft:beetroots_seeds>)
  .addOutput(<minecraft:wheat_seeds>)
  .addOutput(<minecraft:pumpkin_seeds>)
  .addOutput(<minecraft:melon_seeds>)
  .addOutput(<harvestcraft:garlicseeditem>)
  .addOutput(<harvestcraft:pamonionseeditem>)
  .addOutput(<harvestcraft:pamspiceleafseeditem>)
  .addOutput(<harvestcraft:pamlettuceseeditem>)
  .addOutput(<harvestcraft:pambeanseeditem>)
  .addOutput(<harvestcraft:pamcurryleafseeditem>)
  .addOutput(<harvestcraft:pamlemonseeditem>)
  .addOutput(<harvestcraft:pameggplantseeditem>)
  .addOutput(<harvestcraft:pambellpepperseeditem>)
  .addOutput(<harvestcraft:pamstrawberryseeditem>)
  .addOutput(<harvestcraft:pamgingerseeditem>)
  .addOutput(<immersiveengineering:seed>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();