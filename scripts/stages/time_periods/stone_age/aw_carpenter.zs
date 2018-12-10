#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

var stage = stages.stone_age;

# =========================================== #
# Primal Tech
# =========================================== #

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

# =========================================== #
# Minecraft
# =========================================== #

var woodenShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 3, Durability: 75, HarvestLevel: 0, Attack: 2.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 0, Durability: 75, HarvestLevel: 0, Attack: 2.0 as float}, Special: {Categories: ["harvest", "tool", "aoe"]}, TinkerData: {Materials: ["wood", "wood", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]});

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<ore:plankWood>, null, <ore:plankWood>], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks>, null, <minecraft:planks>], 
        [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks:1>, null, <minecraft:planks:1>], 
        [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:spruce_boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks:2>, null, <minecraft:planks:2>], 
        [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:birch_boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks:3>, null, <minecraft:planks:3>], 
        [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:jungle_boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks:4>, null, <minecraft:planks:4>], 
        [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:acacia_boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [woodenShovel, null, woodenShovel],
        [<minecraft:planks:5>, null, <minecraft:planks:5>], 
        [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:dark_oak_boat>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# =========================================== #
# 
# =========================================== #