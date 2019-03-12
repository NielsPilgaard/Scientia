#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

import scripts.utility.stageTinkersTool;

var stage = stages.agriculture;

mods.ItemStages.addItemStage(stage, <rustic:crop_stake>);
mods.ItemStages.addItemStage(stage, <minecraft:farmland>);
mods.ItemStages.addItemStage(stage, <watercan:watercan_stone>);

stageTinkersTool(stage, <tconstruct:mattock>, "tconstruct:mattock");

RecipeBuilder.get("carpenter")
  .setShaped([
            [<tconstruct:rack:*>],
            [<tconstruct:rack:*>], 
            [<tconstruct:rack:*>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<rustic:crop_stake>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
            [<tconstruct:rack:*>, <tconstruct:rack:*>, <tconstruct:rack:*>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<rustic:crop_stake>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

mods.recipestages.Recipes.addShapedMirrored("watercan_watercan_stone_custom", 
stage, <watercan:watercan_stone>,
[[null, <ore:fertilizer>, <minecraft:stone:*>],
[<minecraft:stone:*>, <minecraft:bowl>, <minecraft:stone:*>],
[null, <minecraft:stone:*>, null]]);

RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:plant_fiber>])
  .addTool(<ore:artisansKnife>, 2)
  .addOutput(<minecraft:beetroot_seeds>)
  .addOutput(<minecraft:wheat_seeds>)
  .addOutput(<minecraft:pumpkin_seeds>)
  .addOutput(<minecraft:melon_seeds>)

  .addOutput(<harvestcraft:garlicseeditem>)
  .addOutput(<harvestcraft:onionseeditem>)
  .addOutput(<harvestcraft:spiceleafseeditem>)
  .addOutput(<harvestcraft:lettuceseeditem>)
  .addOutput(<harvestcraft:beanseeditem>)
  .addOutput(<harvestcraft:curryleafseeditem>)
  .addOutput(<harvestcraft:eggplantseeditem>)
  .addOutput(<harvestcraft:bellpepperseeditem>)
  .addOutput(<harvestcraft:strawberryseeditem>)
  .addOutput(<harvestcraft:gingerseeditem>)

  .addOutput(<immersiveengineering:seed>)

  .addOutput(<rustic:tomato_seeds>)
  .addOutput(<rustic:chili_pepper_seeds>)

  .addOutput(<inspirations:carrot_seeds>)
  .addOutput(<inspirations:cactus_seeds>)
  .addOutput(<inspirations:sugar_cane_seeds>)
  .addOutput(<inspirations:potato_seeds>)
  
  .addRequirement(GameStages.anyOf([stage]))
  .create();