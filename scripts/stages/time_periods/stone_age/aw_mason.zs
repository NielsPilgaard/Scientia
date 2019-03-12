#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.stone_age;

# =========================================== #
# Primal Tech
# =========================================== #

RecipeBuilder.get("mason")
  .setShaped([
            [null, <ore:stone>, stick],
            [null, stick, <ore:stone>], 
            [stick, null, null]
            ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 15)
  .addOutput(<primal_tech:stone_mallet>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
            [<ore:stone>, <ore:stone>, <ore:stone>], 
            [null, null, null]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 30)
  .addOutput(<primal_tech:stone_anvil>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<ore:slabCobblestone>, <ore:slabCobblestone>, <ore:slabCobblestone>],
            [<ore:stone>, null, <ore:stone>], 
            [null, <ore:stone>, null]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 30)
  .addOutput(<primal_tech:stone_grill>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
            [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
            [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]
            ])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<primal_tech:charcoal_block>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# =========================================== #
# More Cauldrons
# =========================================== #

RecipeBuilder.get("mason")
  .setShaped([
            [cobble, null, cobble],
            [cobble, null, cobble], 
            [cobble, cobble, cobble]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:cobble_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:brick_block>, null, <minecraft:brick_block>],
            [<minecraft:brick_block>, null, <minecraft:brick_block>], 
            [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:brick_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [stone, null, stone],
            [stone, null, stone], 
            [stone, stone, stone]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:stone_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:1>, null, <minecraft:stone:1>],
            [<minecraft:stone:1>, null, <minecraft:stone:1>], 
            [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:granite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:2>, null, <minecraft:stone:2>],
            [<minecraft:stone:2>, null, <minecraft:stone:2>], 
            [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:smooth_granite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:3>, null, <minecraft:stone:3>],
            [<minecraft:stone:3>, null, <minecraft:stone:3>], 
            [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:diorite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:4>, null, <minecraft:stone:4>],
            [<minecraft:stone:4>, null, <minecraft:stone:4>], 
            [<minecraft:stone:4>, <minecraft:stone:4>, <minecraft:stone:4>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:smooth_diorite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:5>, null, <minecraft:stone:5>],
            [<minecraft:stone:5>, null, <minecraft:stone:5>], 
            [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:andesite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
            [<minecraft:stone:6>, null, <minecraft:stone:6>],
            [<minecraft:stone:6>, null, <minecraft:stone:6>], 
            [<minecraft:stone:6>, <minecraft:stone:6>, <minecraft:stone:6>]
            ])
  .setMirrored()
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<morecauldrons:smooth_andesite_cauldron>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# =========================================== #
# 
# =========================================== #
