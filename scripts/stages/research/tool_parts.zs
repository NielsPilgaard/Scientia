#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.recipestages.Recipes;

import mods.ItemStages.addItemStage;

import mods.jei.JEI.addItem;

var stage = stages.tool_parts;

mods.TinkerStages.addGeneralPartBuildingStage(stage);

for plank in <ore:plankWood>.items {
    Recipes.addShaped(stage,  
    <tconstruct:tooltables:1>.withTag({textureBlock: {id: plank.definition.id, Count: 1 as byte, Damage: plank.metadata as int}}), 
    [
        [<tconstruct:pattern>, <tconstruct:pattern>], 
        [plank, plank]
    ]);
}

for debarkedlog in <ore:logDebarked>.items {
    Recipes.addShaped(stage, 
    <tconstruct:tooltables:2>.withTag({textureBlock: {id: debarkedlog.definition.id, Count: 1 as byte, Damage: debarkedlog.metadata as int}}), 
    [
        [<tconstruct:pattern>, <contenttweaker:research_tool_parts>], 
        [debarkedlog, debarkedlog]
    ]);
}
for log in woodtypes {
    var plank as IItemStack = woodtypes[log].plank.items[0];
    var logItem as IItemStack = woodtypes[log].log.items[0];

    if (plank.definition.owner != "chisel" | plank.definition.owner != "minecraft") {
        Recipes.addShaped(stage,  
        <tconstruct:tooltables:1>.withTag({textureBlock: {id: plank.definition.id, Count: 1 as byte, Damage: plank.metadata as int}}), 
    [
        [<tconstruct:pattern>, <tconstruct:pattern>], 
        [plank, plank]
    ]);
    }
    if (logItem.definition.owner != "chisel" | logItem.definition.owner != "minecraft") {
        Recipes.addShaped(stage, 
        <tconstruct:tooltables:2>.withTag({textureBlock: {id: logItem.definition.id, Count: 1 as byte, Damage: logItem.metadata as int}}), 
    [
        [<tconstruct:pattern>, <contenttweaker:research_tool_parts>], 
        [logItem, logItem]
    ]);
    }
}

Recipes.addShaped("tconstruct_cactus_hatchet_custom", stage, 
<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.9 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:axe_head>.withTag({Material: "cactus"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.9 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}));

Recipes.addShaped("tconstruct_bone_hatchet_custom", stage, 
<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:axe_head>.withTag({Material: "bone"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}));

Recipes.addShaped("tconstruct_bone_pickaxe_custom", stage, 
<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:pick_head>.withTag({Material: "bone"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}));

Recipes.addShaped("tconstruct_cactus_pickaxe_custom", stage, 
<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:pick_head>.withTag({Material: "cactus"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}));

Recipes.addShaped("tconstruct_flint_pickaxe_custom", stage, 
<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1, xp: 4, bonus_modifiers: 0}], Traits: ["ecological", "crude2", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:pick_head>.withTag({Material: "flint"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1, xp: 4, bonus_modifiers: 0}], Traits: ["ecological", "crude2", "toolleveling"]}));

Recipes.addShaped("tconstruct_flint_shovel_custom", stage, 
<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:shovel_head>.withTag({Material: "flint"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 2.9 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]}));

Recipes.addShaped("tconstruct_bone_shovel_custom", stage, 
<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:shovel_head>.withTag({Material: "bone"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 3, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.09 as float, FreeModifiers: 0, Durability: 250, HarvestLevel: 1, Attack: 2.5 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "bone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "splintering", "toolleveling"]}));

Recipes.addShaped("tconstruct_cactus_shovel_custom", stage, 
<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}), [[<tconstruct:binding>.withTag({Material: "plant_fiber"}),<tconstruct:shovel_head>.withTag({Material: "cactus"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
addItem(<tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 260, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "cactus", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "prickly", color: -16735985, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "prickly", "toolleveling"]}));

Recipes.addShapeless("contenttweaker_blank_pattern_custom", stage, 
<tconstruct:pattern> * 2, 
[<contenttweaker:woven_fiber>, <contenttweaker:blank_pattern_frame>]);
addItemStage(stage, <tconstruct:pattern>);