#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.glassblowing;

val glass = [

    <botania:manabottle>,
    <botania:slimebottle>,
    <botania:manaresource:15>,
    <botania:vial>,
    <botania:vial:1>,
    <botania:hourglass>,
    <botania:cosmetic:2>,
    <botania:cosmetic:27>,

    <charset:fluidtank>.withTag({color: 0}),
    <charset:fluidtank>.withTag({color: 1}),
    <charset:fluidtank>.withTag({color: 2}),
    <charset:fluidtank>.withTag({color: 3}),
    <charset:fluidtank>.withTag({color: 4}),
    <charset:fluidtank>.withTag({color: 5}),
    <charset:fluidtank>.withTag({color: 6}),
    <charset:fluidtank>.withTag({color: 7}),
    <charset:fluidtank>.withTag({color: 8}),
    <charset:fluidtank>.withTag({color: 9}),
    <charset:fluidtank>.withTag({color: 10}),
    <charset:fluidtank>.withTag({color: 11}),
    <charset:fluidtank>.withTag({color: 12}),
    <charset:fluidtank>.withTag({color: 13}),
    <charset:fluidtank>.withTag({color: 14}),
    <charset:fluidtank>.withTag({color: 15}),
    
    <inspirations:glass_trapdoor>,
    <inspirations:glass_door>,

    <minecraft:glass_bottle>,
    <minecraft:experience_bottle>,
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),

    <tconstruct:seared_tank>,
    <tconstruct:seared_tank:1>,
    <tconstruct:seared_tank:2>,
    <tconstruct:tinker_tank_controller>

] as IItemStack[];

for item in glass {
    stageItem(stage, item);
}

var glassItems as IItemStack[] = itemUtils.getItemsByRegexUnlocalizedName(".*glass.*");

for item in glassItems {
    stageItem(stage, item);
}

mods.recipestages.Recipes.addShaped("tconstruct_tinker_tank_controller_custom", stage, 
<tconstruct:tinker_tank_controller>, 
[[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
[<tconstruct:materials>, <claybucket:claybucket>|<minecraft:bucket>, <tconstruct:materials>], 
[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);
