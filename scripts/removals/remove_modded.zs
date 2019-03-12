#priority 1

import crafttweaker.item.IItemStack;

import mods.rustic.CrushingTub;
import mods.rustic.EvaporatingBasin;
import mods.rustic.Condenser;

import mods.tconstruct.Alloy;
import mods.tconstruct.Drying;

import mods.jei.JEI.hide;

import mods.bloodmagic.AlchemyTable;

import mods.immersiveengineering.Squeezer;

import mods.botania.ManaInfusion;

# Removing Ironberry crushing & evaporation
    CrushingTub.removeRecipe(<liquid:ironberryjuice> * 250, <rustic:ironberries>);
    EvaporatingBasin.removeRecipe(<rustic:dust_tiny_iron>);

# Rustic Alchemy
var alchemyRecipesRustic as IItemStack[] = [
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]}),
    <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]})
];

for potion in alchemyRecipesRustic {
    hide(potion);
    Condenser.removeRecipe(potion);
}

# Tinkers' Construct Alloying
    Alloy.removeRecipe(<liquid:knightslime>);
    Alloy.removeRecipe(<liquid:pigiron>);

# Tinkers Drying
    Drying.removeRecipe(<tconstruct:edible:*>);
    Drying.removeRecipe(<tconstruct:spaghetti:2>);

# Alchemy Table
var alchemyTableRecipes as IItemStack[][] = [
    [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:flint>, <minecraft:water_bucket>]
];

for ingredients in alchemyTableRecipes {
    AlchemyTable.removeRecipe(ingredients);
}

# IE Squeezer
var squeezerRecipes as IItemStack[] = [
    <minecraft:leather>
];

for item in squeezerRecipes {
    Squeezer.removeItemRecipe(item);
}

# Botania Mana Infusion
var manaInfusionRecipes as IItemStack[] = [
    <minecraft:leather>
];

for item in manaInfusionRecipes {
    ManaInfusion.removeRecipe(item);
}

# Fluid Transform in Cauldron
mods.inspirations.Cauldron.removeFluidTransform(<liquid:beetroot_soup>, <minecraft:beetroot>, <liquid:water>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:mushroom_stew>, <inspirations:materials:4>, <liquid:water>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:rabbit_stew>, <inspirations:materials:5>, <liquid:water>);