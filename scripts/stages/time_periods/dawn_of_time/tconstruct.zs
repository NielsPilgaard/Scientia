#priority 100
import mods.recipestages.Recipes;

import mods.jei.JEI.addItem;

import mods.ItemStages.addItemStage;

import scripts.utility.stageTinkersMaterial;

var stage = stages.dawn_of_time;

stageTinkersMaterial(stage, "cactus");
stageTinkersMaterial(stage, "bone");
stageTinkersMaterial(stage, "flint");
stageTinkersMaterial(stage, "wood");
stageTinkersMaterial(stage, "plant_fiber");

Recipes.addShapedMirrored("tconstruct_flint_hatchet_custom", stage, 
<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "crude", color: -9868951, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]}), 
[[<ore:fiber>,<minecraft:flint>],[stick, null]]);
addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 200, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 0, Durability: 200, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "flint", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965 as long, level: 1}, {identifier: "crude", color: -9868951 as long, level: 2, crude2: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "crude2", "toolleveling"]}));