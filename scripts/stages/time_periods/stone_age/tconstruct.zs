#priority 100
import crafttweaker.item.IItemStack;

import mods.recipestages.Recipes;

import mods.jei.JEI.addItem;

import mods.ItemStages.addItemStage;

import scripts.utility.stageTinkersMaterial;

var stage = stages.stone_age;

stageTinkersMaterial(stage, "stone");
stageTinkersMaterial(stage, "paper");
stageTinkersMaterial(stage, "sponge");
stageTinkersMaterial(stage, "slime");
stageTinkersMaterial(stage, "blueslime");
stageTinkersMaterial(stage, "magmaslime");

var hatchet_stone as IItemStack = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 170, HarvestLevel: 1, Attack: 3.5 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 136, HarvestLevel: 1, Attack: 3.5 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "stone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "cheapskate", "toolleveling"]});
var shovel_stone as IItemStack = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 170, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 136, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "stone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "cheapskate", "toolleveling"]});
var pickaxe_stone as IItemStack = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 3, Durability: 170, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.0 as float, FreeModifiers: 0, Durability: 136, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {Materials: ["wood", "stone", "plant_fiber"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "cheapskate", "toolleveling"]});

Recipes.addShapeless("tconstruct_stone_shovel_custom", stage, 
shovel_stone, [
    <tconstruct:binding>.withTag({Material: "plant_fiber"}),
    <tconstruct:shovel_head>.withTag({Material: "stone"}),
    <tconstruct:tool_rod>.withTag({Material: "wood"})]);
addItem(shovel_stone);
addItemStage(stage, shovel_stone);

Recipes.addShapeless("tconstruct_stone_hatchet_custom", stage, 
hatchet_stone, [
    <tconstruct:binding>.withTag({Material: "plant_fiber"}),
    <tconstruct:axe_head>.withTag({Material: "stone"}),
    <tconstruct:tool_rod>.withTag({Material: "wood"})]);
addItem(hatchet_stone);
addItemStage(stage, hatchet_stone);

Recipes.addShapeless("tconstruct_stone_pickaxe_custom", stage, 
pickaxe_stone, [
    <tconstruct:binding>.withTag({Material: "plant_fiber"}),
    <tconstruct:pick_head>.withTag({Material: "stone"}),
    <tconstruct:tool_rod>.withTag({Material: "wood"})]);
addItem(pickaxe_stone);
addItemStage(stage, pickaxe_stone);
