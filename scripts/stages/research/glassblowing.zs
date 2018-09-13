#priority 100
import crafttweaker.item.IItemStack;

import scripts.utility.stageIItemstack;

var stage = stages.glassblowing;

val glass = [
    
    <bibliocraft:biblioglasses:1>,
    <bibliocraft:biblioglasses>,

    <botania:manabottle>,
    <botania:slimebottle>,
    <botania:manaresource:15>,
    <botania:vial>,
    <botania:vial:1>,
    <botania:hourglass>,
    <botania:cosmetic:2>,
    <botania:cosmetic:27>,

    <minecraft:glass_bottle>,
    <minecraft:experience_bottle>,
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"})

] as IItemStack[];

for item in glass {
    stageIItemstack(stage, item);
}
/*
val regexGlass = [

    "minecraft:stained_glass.*",
    "minecraft:stained_glass_pane.*",
    "thermalfoundation:glass.*",
    "thermalfoundation:glass_alloy.*",
    "tconstruct:clear_stained_glass.*"

] as String[];

for expr in regexGlass {
    mods.recipestages.Recipes.setRecipeStageByRegex(stage, expr);
}
*/