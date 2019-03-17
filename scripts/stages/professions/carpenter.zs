#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

import mods.ItemStages.addItemStage;

import mods.recipestages.Recipes.setRecipeStage;
import mods.recipestages.Recipes.addShapedMirrored;

# =========================================== #
# Novice
# =========================================== #

var i as int = 0;

var vanillaWoodtypes as int[string] = {
  oak : 0,
  spruce : 1,
  birch : 2,
  jungle : 3,
  acacia : 4,
  dark_oak : 5
};

for log in woodtypes {

if (!isNull(woodtypes[log].plank)) {
  RecipeBuilder.get("carpenter")
    .setShapeless([woodtypes[log].log.items[0]])
    .addTool(<ore:artisansHandsaw>, 3)
    .addOutput(woodtypes[log].plank.items[0] * 3)
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
    .setName("novice_planks_" + i)
    .create();
}
if (!isNull(woodtypes[log].slab)) {
  RecipeBuilder.get("carpenter")
    .setShaped([
          [woodtypes[log].plank.items[0], woodtypes[log].plank.items[0], woodtypes[log].plank.items[0]]
          ])
    .setMirrored()
    .addTool(<ore:artisansHandsaw>, 2)
    .addOutput(woodtypes[log].slab.items[0] * 6)
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
    .setName("novice_slabs_" + i)
    .create();
}


RecipeBuilder.get("carpenter")
  .setShapeless([<ore:slabWood>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(stick * 3)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]).exclude([stages.skilled_carpenter]))
  .create();

# =========================================== #
# Tinkers' Construct Novice Carpenter

if (!isNull(woodtypes[log].slab)) {
  RecipeBuilder.get("carpenter")  
    .setShaped([
          [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0]]
          ])
    .setMirrored()
    .addTool(<ore:artisansFramingHammer>, 8)
    .addOutput(<tconstruct:rack>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
    .setName("tconstruct_item_rack_1_" + i)
    .create();


  RecipeBuilder.get("carpenter")  
    .setShaped([
          [woodtypes[log].slab.items[0], woodtypes[log].slab.items[0], woodtypes[log].slab.items[0]]
          ])
    .setMirrored()
    .addTool(<ore:artisansFramingHammer>, 12)
    .addOutput(<tconstruct:rack:1>.withTag({textureBlock: {id: woodtypes[log].slab.items[0].definition.id, Count: 1 as byte, Damage: woodtypes[log].slab.items[0].metadata as int}}))
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
    .setName("tconstruct_drying_rack_3_" + i)
    .create();
  }
    i = i + 1;
}


# Slabs without Logs
for slab, plank in loglessSlabPlankMap {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, plank, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(slab * 9)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter]))
  .create();
}

# =========================================== #
# Rustic & Charset Novice Carpenter

var itemsToStageNovice as IItemStack[] = [

  <rustic:cabinet>,
  <charset:barrel>.withTag({log: "minecraft:log;0", slab: "minecraft:wooden_slab;0"}),
  <charset:barrel>.withTag({log: "minecraft:log;1", slab: "minecraft:wooden_slab;1"}),
  <charset:barrel>.withTag({log: "minecraft:log;2", slab: "minecraft:wooden_slab;2"}),
  <charset:barrel>.withTag({log: "minecraft:log;3", slab: "minecraft:wooden_slab;3"}),
  <charset:barrel>.withTag({log: "minecraft:log2;0", slab: "minecraft:wooden_slab;4"}),
  <charset:barrel>.withTag({log: "minecraft:log2;1", slab: "minecraft:wooden_slab;5"}),
  <charset:barrel>.withTag({log: "rustic:log;0", slab: "rustic:olive_slab_item;0"}),
  <charset:barrel>.withTag({log: "rustic:log;1", slab: "rustic:ironwood_slab_item;0"}),
  <charset:barrel>.withTag({log: "traverse:fir_log;0", slab: "traverse:fir_slab;0"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs;0", slab: "natura:overworld_slab;0"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs;1", slab: "natura:overworld_slab;1"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs;2", slab: "natura:overworld_slab;2"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs;3", slab: "natura:overworld_slab;3"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs2;0", slab: "natura:overworld_slab;4"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs2;1", slab: "natura:overworld_slab2;0"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs2;2", slab: "natura:overworld_slab2;1"}),
  <charset:barrel>.withTag({log: "natura:overworld_logs2;3", slab: "natura:overworld_slab2;2"}),
  <charset:barrel>.withTag({log: "natura:redwood_logs;1", slab: "natura:overworld_slab2;3"})

];

for item in itemsToStageNovice {
  addItemStage(stages.novice_carpenter, item);
}

for wood in woodtypes {
var plank = woodtypes[wood].plank;
var log = woodtypes[wood].log;
var slab = woodtypes[wood].slab;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, plank, plank],
        [plank, null, <ore:trapdoorWood>], 
        [plank, plank, plank]
        ])
  .setName("rustic_cabinet_" + plank.items[0].definition.id + "_" + plank.items[0].metadata)
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<rustic:cabinet>.withTag({material: {id: plank.items[0].definition.id, Count: 1 as byte, Damage: plank.items[0].metadata as int}}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();
if (!isNull(slab)) {
  RecipeBuilder.get("carpenter")  
    .setShaped([
          [log, slab, log],
          [log, null, log], 
          [log, log, log]
          ])
    .setName("charset_barrel_" + plank.items[0].definition.id + "_" + plank.items[0].metadata)
    .setMirrored()
    .addTool(<ore:artisansHandsaw>, 5)
    .addOutput(<charset:barrel>.withTag({
      log: log.items[0].definition.id + ";" + log.items[0].metadata, 
      slab: slab.items[0].definition.id + ";" + slab.items[0].metadata}))
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
    .create();
  }
}

RecipeBuilder.get("carpenter")  
  .setShaped([
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
        [<ore:plankWood>, null, <ore:trapdoorWood>], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setName("rustic_cabinet_oredict")
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<rustic:cabinet>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [<ore:logWood>, <ore:slabWood>, <ore:logWood>],
        [<ore:logWood>, null, <ore:logWood>], 
        [<ore:logWood>, <ore:logWood>, <ore:logWood>]
        ])
  .setName("charset_barrel_oredict")
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<charset:barrel>.withTag({log: "minecraft:log;0", slab: "minecraft:wooden_slab;0"}))
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

# =========================================== #
# Bibliocraft Novice Carpenter

addItemStage(stages.novice_carpenter, <ore:shelfWood>);
addItemStage(stages.novice_carpenter, <ore:labelWood>);
addItemStage(stages.novice_carpenter, <ore:mapFrameWood>);
addItemStage(stages.novice_carpenter, <ore:bookcaseWood>);

for wood in vanillaWoodtypes {

var slab = woodtypes[wood].slab;

if (!isNull(slab)) {
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
          [null, stick, null],
          [stick, slab, stick], 
          [null, stick, null]
          ])
    .setMirrored()
    .addTool(<ore:artisansHandsaw>, 5)
    .addOutput(<bibliocraft:label>.definition.makeStack(vanillaWoodtypes[wood]))
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
    .create();

  RecipeBuilder.get("carpenter")  
    .setShaped([
          [stick, stick, stick],
          [stick, slab, stick], 
          [stick, stick, stick]
          ])
    .setMirrored()  
    .addTool(<ore:artisansHandsaw>, 5)
    .addOutput(<bibliocraft:mapframe>.definition.makeStack(vanillaWoodtypes[wood]))
    .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
    .create();

    i = i + 1;
  }
}

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
        [null, stick, null],
        [stick, board, stick], 
        [null, stick, null]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<bibliocraft:label:6>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [stick, stick, stick],
        [stick, sheet, stick], 
        [stick, stick, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<bibliocraft:mapframe:6>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

# =========================================== #
# More Cauldrons Novice
# =========================================== #

var plank = woodtypes.oak.plank;
var slab = woodtypes.oak.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:oak_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

plank = woodtypes.spruce.plank;
slab = woodtypes.spruce.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:spruce_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

plank = woodtypes.birch.plank;
slab = woodtypes.birch.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:birch_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

plank = woodtypes.jungle.plank;
slab = woodtypes.jungle.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:jungle_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

plank = woodtypes.acacia.plank;
slab = woodtypes.acacia.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:acacia_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

plank = woodtypes.dark_oak.plank;
slab = woodtypes.dark_oak.plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, null, plank],
        [plank, null, plank], 
        [plank, slab, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<morecauldrons:big_oak_cauldron>)
  .addRequirement(GameStages.anyOf([stages.novice_carpenter]))
  .create();

# =========================================== #
# Skilled
# =========================================== #

var itemsToStageSkilled as IItemStack[] = [

  <charset:chest>

];

addItemStage(stages.skilled_carpenter, <ore:chairWood>);
addItemStage(stages.skilled_carpenter, <ore:tableWood>);
addItemStage(stages.skilled_carpenter, <ore:seat>);
addItemStage(stages.skilled_carpenter, <ore:seatBack>);
addItemStage(stages.skilled_carpenter, <ore:caseWood>);
addItemStage(stages.skilled_carpenter, <ore:deskWood>);
addItemStage(stages.skilled_carpenter, <ore:armorStandWood>);
addItemStage(stages.skilled_carpenter, <ore:furniturePanelerWood>);
addItemStage(stages.skilled_carpenter, <ore:chestWood>);


for item in itemsToStageSkilled {
  addItemStage(stages.skilled_carpenter, item);
}

for log in woodtypes {

if (!isNull(woodtypes[log].plank)) {
  RecipeBuilder.get("carpenter")
    .setShapeless([woodtypes[log].log.items[0]])
    .addTool(<ore:artisansHandsaw>, 6)
    .addOutput(woodtypes[log].plank.items[0] * 6)
    .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
    .setName("skilled_planks_" + i)
    .create();
}

if (!isNull(woodtypes[log].slab)) {
  RecipeBuilder.get("carpenter")
    .setShaped([
          [woodtypes[log].plank.items[0], woodtypes[log].plank.items[0], woodtypes[log].plank.items[0]]
          ])
    .setMirrored()  .addTool(<ore:artisansHandsaw>, 2)
    .addOutput(woodtypes[log].slab.items[0] * 9)
    .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
    .setName("skilled_slabs_" + i)
    .create();
}

if (!isNull(woodtypes[log].slab)) {
  RecipeBuilder.get("carpenter")
    .setShapeless([woodtypes[log].slab.items[0]])
    .addTool(<ore:artisansKnife>, 4)
    .addOutput(stick * 5)
    .addRequirement(GameStages.anyOf([stages.skilled_carpenter]).exclude([stages.master_carpenter]))
    .setName("skilled_sticks_" + i)
    .create();
  }
    i = i + 1;
  
}

# Slabs without Logs
for slab, plank in loglessSlabPlankMap {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, plank, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(slab * 9)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter]))
  .create();
}

for wood in woodtypes {
var plank = woodtypes[wood].plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [plank, plank, plank],
        [plank, <minecraft:stone_button>, plank], 
        [plank, plank, plank]
        ])
  .setName("charset_chest_with_texture_of_" + plank.items[0].definition.id + "_" + plank.items[0].metadata)
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<charset:chest>.withTag({wood: plank.items[0].definition.id + ";" + plank.items[0].metadata}))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

}

RecipeBuilder.get("carpenter")  
  .setShaped([
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
        [<ore:plankWood>, <minecraft:stone_button>, <ore:plankWood>], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setName("minecraft_chest_oredict")
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<charset:chest>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

# =========================================== #
# Bibliocraft Skilled Carpenter

for wood in vanillaWoodtypes {

var slab = woodtypes[wood].slab;
var plank = woodtypes[wood].plank;

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, <ore:paneGlass>, slab],
        [slab, <minecraft:wool:*>, slab], 
        [slab, slab, slab]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 25)
  .addTool(<ore:artisansGemCutter>, 30)
  .addOutput(<bibliocraft:case>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [sheet, <ore:artisansToolFlint>, sheet],
        [slab, slab, slab], 
        [plank, plank, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 60)
  .addOutput(<bibliocraft:furniturepaneler>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [<ore:torch>, null, <ore:feather>],
        [slab, slab, slab], 
        [plank, sheet, plank]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 50)
  .addOutput(<bibliocraft:desk>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <ore:blockWoolWhite>, null],
        [null, slab, null], 
        [stick, sheet, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seat>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [slab, slab, slab],
        [null, board, null], 
        [stick, slab, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<bibliocraft:table>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [stick, <ore:blockWoolWhite>, stick],
        [stick, slab, stick], 
        [stick, null, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback1>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [stick, <ore:blockWoolWhite>, stick],
        [stick, slab, stick], 
        [stick, null, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback2>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([slab, <bibliocraft:seatback2:*>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback3>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([slab, <ore:blockWoolWhite>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback4>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([slab, slab, <bibliocraft:seatback2:*>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback5>.definition.makeStack(vanillaWoodtypes[wood]))
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

i = i + 1;

}

RecipeBuilder.get("carpenter")  
  .setShaped([
        [board, <ore:blockGlass>, board],
        [board, <ore:wool>, board], 
        [board, board, board]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 25)
  .addTool(<ore:artisansGemCutter>, 30)
  .addOutput(<bibliocraft:case:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [sheet, <ore:artisansToolFlint>, sheet],
        [board, board, board], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 60)
  .addOutput(<bibliocraft:furniturepaneler:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [sheet, <ore:artisansToolFlint>, sheet],
        [board, board, board], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 50)
  .addOutput(<bibliocraft:desk:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <ore:blockWoolWhite>, null],
        [null, board, null], 
        [stick, sheet, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seat:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [board, board, board],
        [null, board, null], 
        [stick, board, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<bibliocraft:table:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [null, <ore:blockWoolWhite>, null],
        [null, board, null], 
        [stick, null, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback1:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [stick, <ore:blockWoolWhite>, stick],
        [stick, board, stick], 
        [stick, null, stick]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback2:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([board, <bibliocraft:seatback2:*>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback3:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([board, <ore:blockWoolWhite>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback4:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShapeless([board, board, <bibliocraft:seatback2:*>])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<bibliocraft:seatback5:6>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();

RecipeBuilder.get("carpenter")  
  .setShaped([
        [<tconstruct:knife_blade>.withTag({Material: "flint"}).onlyWithTag({Material: "flint"}), null, null],
        [null, <tconstruct:tough_tool_rod>.withTag({Material: "stone"}).onlyWithTag({Material: "stone"}), null], 
        [stick, null, <ore:buttonWood>]
        ])
  .setMirrored()  
  .addTool(<ore:artisansHandsaw>, 30)
  .addTool(<ore:artisansCutters>, 15)
  .addOutput(<bibliocraft:handdrill>)
  .addRequirement(GameStages.anyOf([stages.skilled_carpenter]))
  .create();



# =========================================== #
# Rustic Furniture Skilled Carpenter

addShapedMirrored("rustic_table_olive", stages.skilled_carpenter, <rustic:table_olive>, [[<rustic:olive_slab_item>, <rustic:olive_slab_item>, <rustic:olive_slab_item>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_ironwood", stages.skilled_carpenter, <rustic:table_ironwood>, [[<rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_big_oak", stages.skilled_carpenter, <rustic:table_big_oak>, [[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_acacia", stages.skilled_carpenter, <rustic:table_acacia>, [[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_jungle", stages.skilled_carpenter, <rustic:table_jungle>, [[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_birch", stages.skilled_carpenter, <rustic:table_birch>, [[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_spruce", stages.skilled_carpenter, <rustic:table_spruce>, [[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_table_oak", stages.skilled_carpenter, <rustic:table_oak>, [[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],[<bibliocraft:framingboard>, null, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);

addShapedMirrored("rustic_chair_spruce", stages.skilled_carpenter, <rustic:chair_spruce>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab:1>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_acacia", stages.skilled_carpenter, <rustic:chair_acacia>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab:4>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_jungle", stages.skilled_carpenter, <rustic:chair_jungle>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab:3>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_olive", stages.skilled_carpenter, <rustic:chair_olive>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <rustic:olive_slab_item>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_ironwood", stages.skilled_carpenter, <rustic:chair_ironwood>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <rustic:ironwood_slab_item>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_birch", stages.skilled_carpenter, <rustic:chair_birch>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab:2>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_big_oak", stages.skilled_carpenter, <rustic:chair_big_oak>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab:5>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);
addShapedMirrored("rustic_chair_oak", stages.skilled_carpenter, <rustic:chair_oak>, [[<bibliocraft:framingboard>, null, null],[<bibliocraft:framingboard>, <minecraft:wooden_slab>, <bibliocraft:framingboard>], [<bibliocraft:framingboard>, null, <bibliocraft:framingboard>]]);

# =========================================== #
# Master
# =========================================== #

for item in loadedMods["architecturecraft"].items {
  addItemStage(stages.master_carpenter, item);
}

for log in woodtypes {

if (!isNull(woodtypes[log].plank)) {
  RecipeBuilder.get("carpenter")
    .setShapeless([woodtypes[log].log.items[0]])
    .addTool(<ore:artisansHandsaw>, 8)
    .addOutput(woodtypes[log].plank.items[0] * 8)
    .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
    .setName("master_planks_" + i)
    .create();
}

if (!isNull(woodtypes[log].slab)) {
  RecipeBuilder.get("carpenter")
    .setShaped([
          [woodtypes[log].plank.items[0], woodtypes[log].plank.items[0], woodtypes[log].plank.items[0]]
          ])
    .setMirrored()
    .addTool(<ore:artisansHandsaw>, 4)
    .addOutput(woodtypes[log].slab.items[0] * 12)
    .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
    .setName("master_slabs_" + i)
    .create();
  }
    i = i + 1;
}

# Slabs without Logs
for slab, plank in loglessSlabPlankMap {
  RecipeBuilder.get("carpenter")
  .setShaped([
        [plank, plank, plank]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(slab * 12)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .create();
}

RecipeBuilder.get("carpenter")
  .setShapeless([<ore:slabWood>])
  .addTool(<ore:artisansKnife>, 4)
  .addOutput(stick * 8)
  .addRequirement(GameStages.allOf([stages.novice_carpenter, stages.skilled_carpenter, stages.master_carpenter]))
  .create();

# Bed
var quilted_wool = <quark:quilted_wool>;
var bed = <minecraft:bed>;

for i in 0 to 15 {
quilted_wool = <quark:quilted_wool>.definition.makeStack(i);
bed = <minecraft:bed>.definition.makeStack(i);
RecipeBuilder.get("carpenter")
  .setShaped([
        [quilted_wool, quilted_wool, quilted_wool], 
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
        ])
  .setMirrored()
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(bed)
  .addRequirement(GameStages.anyOf([stages.master_carpenter]))
  .create();
}