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

for woodtype in woodtypes {
var slab = woodtypes[woodtype].slab;
var plank = woodtypes[woodtype].plank;

# Stairs
if (!isNull(woodtypes[woodtype].stair)) {
  var stair = woodtypes[woodtype].stair;
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, null, null],
        [plank, plank, null], 
        [plank, plank, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(woodtypes[woodtype].stair.items[0] * 8)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Trapdoor
if (!isNull(woodtypes[woodtype].trapdoor)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [slab, slab],
        [slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(woodtypes[woodtype].trapdoor.items[0] * 2)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Door
if (!isNull(woodtypes[woodtype].door)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, board],
        [plank, board], 
        [plank, board]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(woodtypes[woodtype].door.items[0] * 2)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Fence
if (!isNull(woodtypes[woodtype].fence)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, board, plank],
        [plank, board, plank], 
        [plank, null, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(woodtypes[woodtype].fence.items[0] * 4)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Fence Gate
if (!isNull(woodtypes[woodtype].fence_gate)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, slab, plank],
        [plank, board, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(woodtypes[woodtype].fence_gate.items[0] * 4)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Pressure Plate
if (!isNull(woodtypes[woodtype].pressure_plate)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(woodtypes[woodtype].pressure_plate.items[0] * 8)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Button
if (!isNull(woodtypes[woodtype].button)) {
  RecipeBuilder.get("carpenter")
  .setShapeless([plank])
  .addTool(<ore:artisansHandsaw>, 32)
  .addOutput(woodtypes[woodtype].button.items[0] * 16)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

# Cauldron
if (!isNull(woodtypes[woodtype].cauldron)) {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(woodtypes[woodtype].cauldron.items[0])
  .addRequirement(GameStages.anyOf([stage]))
  .create();
  }
}

# =========================================== #
# Engineer's Doors & Misc
# =========================================== #

# Engineer's Treated Trapdoor
var treatedPlank = <ore:plankTreatedWood>;
var treatedSlab = <ore:slabTreatedWood>;
RecipeBuilder.get("carpenter")
  .setShaped([
        [treatedSlab, treatedSlab],
        [treatedSlab, treatedSlab]
        ])
  .setMirrored()
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<engineersdoors:trapdoor_treated> * 2)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# Engineer's Treated Door
RecipeBuilder.get("carpenter")
  .setShaped([
        [treatedPlank, board],
        [treatedPlank, board], 
        [treatedPlank, board]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<engineersdoors:door_treated> * 2)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([<engineersdoors:door_treated>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<engineersdoors:door_treated_ornate>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([<engineersdoors:door_treated_ornate>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<engineersdoors:door_treated_reinforced>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([<engineersdoors:door_treated_reinforced>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<engineersdoors:door_treated>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# Engineer's Treated Fence Gate
RecipeBuilder.get("carpenter")
  .setShaped([
        [treatedPlank, treatedSlab, treatedPlank],
        [treatedPlank, board, treatedPlank], 
        [treatedPlank, treatedSlab, treatedPlank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(<engineersdoors:fencegate_treated> * 4)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# Ladder
RecipeBuilder.get("carpenter")
  .setShaped([
        [treatedPlank, treatedSlab, treatedPlank],
        [treatedPlank, board, treatedPlank], 
        [treatedPlank, treatedSlab, treatedPlank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(<engineersdoors:fencegate_treated> * 4)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

# Stairs
for stair, plank in loglessStairPlankMap {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, null, null],
        [plank, plank, null], 
        [plank, plank, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(stair * 8)
  .addRequirement(GameStages.anyOf([stage]))
  .create();
}

