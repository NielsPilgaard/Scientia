#priority 100
import scripts.utility.stageIItemstack;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

# =========================================== #
# Novice
# =========================================== #

for log in woodtypes {
RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].log.items[0]])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(woodtypes[log].plank.items[0] * 3)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(woodtypes[log].slab.items[0] * 2)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].slab.items[0]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 3)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
        [null, null, null], 
        [null, null, null]
        ])
  .addTool(<ore:artisansFramingHammer>, 15)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab"}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [null, null, null],
        [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], 
        [null, null, null]
        ])
  .addTool(<ore:artisansFramingHammer>, 15)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab"}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [null, null, null],
        [null, null, null], 
        [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
        ])
  .addTool(<ore:artisansFramingHammer>, 15)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab"}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
        [<ore:slabWood>, <ore:slabWood>, null],
        [null, null, null], 
        [null, null, null]
        ])
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab"}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();
}

# =========================================== #
# Skilled
# =========================================== #

for log in woodtypes {

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].log.items[0]])
  .addTool(<ore:artisansHandsaw>, 6)
  .addOutput(woodtypes[log].plank.items[0] * 6)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(woodtypes[log].slab.items[0] * 2)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].slab.items[0]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 3)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
  .create();
}

# =========================================== #
# Master
# =========================================== #

for log in woodtypes {

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].log.items[0]])
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(woodtypes[log].plank.items[0] * 8)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(woodtypes[log].slab.items[0] * 2)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].slab.items[0]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 3)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .create();
}
