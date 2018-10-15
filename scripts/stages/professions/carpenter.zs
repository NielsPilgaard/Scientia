#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

import mods.ItemStages.addItemStage;

# =========================================== #
# Novice
# =========================================== #

val sheet = <bibliocraft:framingsheet>;
val board = <bibliocraft:framingboard>;
var i as int = 0;

var vanillaWoodtypes as int[string] = {
  oak : 0,
  spruce : 1,
  birch : 2,
  jungle : 3,
  acacia : 4,
  dark_oak : 5
};

var itemsToStageNovice as IItemStack[] = [
  // rustic container thing
  // barrels
  // etc
];

for item in itemsToStageNovice {
  addItemStage(stages.novice_carpenter, item);
}

for log in woodtypes {

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].log.items[0]])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(woodtypes[log].plank.items[0] * 3)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .setName("novice_planks_" + i)
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(woodtypes[log].slab.items[0] * 2)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .setName("novice_slabs_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], null],
        [null, null, null], 
        [null, null, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 8)
  .addOutput(<tconstruct:rack>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_item_rack_1_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, null, null],
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], null], 
        [null, null, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 8)
  .addOutput(<tconstruct:rack>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_item_rack_2_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, null, null],
        [null, null, null], 
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], null]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 8)
  .addOutput(<tconstruct:rack>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_item_rack_3_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], woodtypes[log].slab.items[0]],
        [null, null, null], 
        [null, null, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 12)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_drying_rack_1_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, null, null],
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], woodtypes[log].slab.items[0]], 
        [null, null, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 12)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_drying_rack_2_" + i)
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, null, null],
        [null, null, null], 
        [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], woodtypes[log].slab.items[0]]
        ])
  .setMirrored()
  .addTool(<ore:artisansFramingHammer>, 12)
  .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .setName("tconstruct_drying_rack_3_" + i)
  .create();

  i = i + 1;
}

RecipeBuilder.get("carpenter")
  .setShapeless([<ore:slabWood>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 3)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .create();

# =========================================== #
# Bibliocraft Novice Carpenter

addItemStage(stages.skilled_carpenter, <ore:shelfWood>);
addItemStage(stages.skilled_carpenter, <ore:labelWood>);
addItemStage(stages.skilled_carpenter, <ore:mapFrameWood>);
addItemStage(stages.skilled_carpenter, <ore:bookcaseWood>);

RecipeBuilder.get("carpenter")  
  .setShapeless([<ore:slabWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(sheet * 2)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([sheet])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(board * 2)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [board, board, board],
        [board, sheet, board], 
        [board, board, board]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 9)
  .addOutput(<bibliocraft:bookcase:6>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [board, board, board],
        [null, sheet, null], 
        [board, board, board]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 7)
  .addOutput(<bibliocraft:shelf:6>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <minecraft:stick>, null],
        [<minecraft:stick>, board, <minecraft:stick>], 
        [null, <minecraft:stick>, null]
        ])
  .setMirrored()  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<bibliocraft:label:6>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

for wood in vanillaWoodtypes {

var slab = woodtypes[wood].slab;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, slab, slab],
        [slab, sheet, slab], 
        [slab, slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 9)
  .addOutput(<bibliocraft:bookcase>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, slab, slab],
        [null, sheet, null], 
        [slab, slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 7)
  .addOutput(<bibliocraft:shelf>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <minecraft:stick>, null],
        [<minecraft:stick>, slab, <minecraft:stick>], 
        [null, <minecraft:stick>, null]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<bibliocraft:label>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

i = i + 1;

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
  .setName("skilled_planks_" + i)
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(woodtypes[log].slab.items[0] * 3)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
  .setName("skilled_slabs_" + i)
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].slab.items[0]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 5)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
  .setName("skilled_sticks_" + i)
  .create();

  i = i + 1;
}

# =========================================== #
# Bibliocraft Skilled Carpenter

addItemStage(stages.skilled_carpenter, <ore:chairWood>);
addItemStage(stages.skilled_carpenter, <ore:tableWood>);
addItemStage(stages.skilled_carpenter, <ore:seatBack>);
addItemStage(stages.skilled_carpenter, <ore:caseWood>);
addItemStage(stages.skilled_carpenter, <ore:deskWood>);
addItemStage(stages.skilled_carpenter, <ore:armorStandWood>);
addItemStage(stages.skilled_carpenter, <ore:furniturePanelerWood>);
addItemStage(stages.skilled_carpenter, <ore:chestWood>);
/*

Just a template for the rest of the Bibliocraft items

for wood in vanillaWoodtypes {

var slab = woodtypes[wood].slab;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, slab, slab],
        [slab, sheet, slab], 
        [slab, slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 9)
  .addOutput(<bibliocraft:bookcase>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, slab, slab],
        [null, sheet, null], 
        [slab, slab, slab]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 7)
  .addOutput(<bibliocraft:shelf>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <minecraft:stick>, null],
        [<minecraft:stick>, slab, <minecraft:stick>], 
        [null, <minecraft:stick>, null]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<bibliocraft:label>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();
}
*/

# =========================================== #
# Master
# =========================================== #

for item in loadedMods["architecturecraft"].items {
  addItemStage(stages.master_carpenter, item);
}

for log in woodtypes {

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].log.items[0]])
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(woodtypes[log].plank.items[0] * 8)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .setName("master_planks_" + i)
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].plank.items[0]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(woodtypes[log].slab.items[0] * 2)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .setName("master_slabs_" + i)
  .create();

RecipeBuilder.get("carpenter")
  .setShapeless([woodtypes[log].slab.items[0]])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(<minecraft:stick> * 8)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .setName("master_sticks_" + i)
  .create();

  i = i + 1;
}
