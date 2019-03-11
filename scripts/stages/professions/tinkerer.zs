#priority 1500
import crafttweaker.item.IItemStack;

import scripts.utility.stageTinkersTool;
import scripts.utility.stageTinkersPart;

import mods.ItemStages.addItemStage;

import mods.recipestages.Recipes.addShapedMirrored;

# =========================================== #
# Novice
# =========================================== #

mods.TinkerStages.addGeneralCraftingStage(stages.novice_tinkerer);

addShapedMirrored("tconstruct_tooltables_3_custom",
stages.novice_tinkerer, 
<tconstruct:tooltables:3>,
[[<ore:slabWood>, <ore:workbench>, <ore:slabWood>],
[<ore:logDebarked>, null, <ore:logDebarked>], 
[<ore:logDebarked>, null, <ore:logDebarked>]]);

stageTinkersTool(stages.novice_tinkerer, <tconstruct:kama>, "tconstruct:kama");
stageTinkersTool(stages.novice_tinkerer, <tconstruct:frypan>, "tconstruct:frypan");
stageTinkersTool(stages.novice_tinkerer, <tconstruct:battlesign>, "tconstruct:battlesign");

# =========================================== #
# Apprentice
# =========================================== #

mods.TinkerStages.addGeneralPartReplacingStage(stages.apprentice_tinkerer);

val bowItems = [
    
    <tconstruct:bow_limb>.withTag({Material: "wood"}),
    <tconstruct:bow_limb>.withTag({Material: "stone"}),
    <tconstruct:bow_limb>.withTag({Material: "flint"}),
    <tconstruct:bow_limb>.withTag({Material: "cactus"}),
    <tconstruct:bow_limb>.withTag({Material: "bone"}),
    <tconstruct:bow_limb>.withTag({Material: "paper"}),
    <tconstruct:bow_limb>.withTag({Material: "sponge"}),
    <tconstruct:bow_limb>.withTag({Material: "slime"}),
    <tconstruct:bow_limb>.withTag({Material: "blueslime"}),
    <tconstruct:bow_limb>.withTag({Material: "magmaslime"}),
    <tconstruct:bow_limb>.withTag({Material: "plant_fiber"}),

    <tconstruct:bow_string>.withTag({Material: "string"}),
    <tconstruct:bow_string>.withTag({Material: "slimevine_blue"}),
    <tconstruct:bow_string>.withTag({Material: "slimevine_purple"}),
    <tconstruct:bow_string>.withTag({Material: "vine"}),
    <tconstruct:bow_string>.withTag({Material: "hemp"}),

    <tconstruct:arrow_head>.withTag({Material: "wood"}),
    <tconstruct:arrow_head>.withTag({Material: "stone"}),
    <tconstruct:arrow_head>.withTag({Material: "flint"}),
    <tconstruct:arrow_head>.withTag({Material: "cactus"}),
    <tconstruct:arrow_head>.withTag({Material: "bone"}),
    <tconstruct:arrow_head>.withTag({Material: "paper"}),
    <tconstruct:arrow_head>.withTag({Material: "sponge"}),
    <tconstruct:arrow_head>.withTag({Material: "slime"}),
    <tconstruct:arrow_head>.withTag({Material: "blueslime"}),
    <tconstruct:arrow_head>.withTag({Material: "magmaslime"}),
    <tconstruct:arrow_head>.withTag({Material: "plant_fiber"}),

    <tconstruct:arrow_shaft>.withTag({Material: "wood"}),
    <tconstruct:arrow_shaft>.withTag({Material: "bone"}),
    <tconstruct:arrow_shaft>.withTag({Material: "blaze"}),
    <tconstruct:arrow_shaft>.withTag({Material: "reed"}),
    <tconstruct:arrow_shaft>.withTag({Material: "ice"}),
    <tconstruct:arrow_shaft>.withTag({Material: "endrod"}),
    <tconstruct:arrow_shaft>.withTag({Material: "treatedwood"}),

    <tconstruct:fletching>.withTag({Material: "feather"}),
    <tconstruct:fletching>.withTag({Material: "slimeleaf_blue"}),
    <tconstruct:fletching>.withTag({Material: "slimeleaf_orange"}),
    <tconstruct:fletching>.withTag({Material: "slimeleaf_purple"}),
    <tconstruct:fletching>.withTag({Material: "leaf"})
    
] as IItemStack[];

for item in bowItems {
    addItemStage(stages.apprentice_tinkerer, item);
}

stageTinkersPart(stages.apprentice_tinkerer, <tconstruct:fletching>, "tconstruct:fletching");
stageTinkersPart(stages.apprentice_tinkerer, <tconstruct:bow_limb>, "tconstruct:bow_limb");
stageTinkersPart(stages.apprentice_tinkerer, <tconstruct:arrow_shaft>, "tconstruct:arrow_shaft");
stageTinkersPart(stages.apprentice_tinkerer, <tconstruct:bow_string>, "tconstruct:bow_string");
stageTinkersPart(stages.apprentice_tinkerer, <tconstruct:arrow_head>, "tconstruct:arrow_head");

stageTinkersTool(stages.apprentice_tinkerer, <tconstruct:shortbow>, "tconstruct:shortbow");
stageTinkersTool(stages.apprentice_tinkerer, <tconstruct:arrow>, "tconstruct:arrow");

stageTinkersTool(stages.apprentice_tinkerer, <tconstruct:broadsword>, "tconstruct:broadsword");
stageTinkersTool(stages.apprentice_tinkerer, <tconstruct:rapier>, "tconstruct:rapier");
stageTinkersTool(stages.apprentice_tinkerer, <tconstruct:longsword>, "tconstruct:longsword");

mods.TinkerStages.addGeneralModifierStage(stages.apprentice_tinkerer);

# Armors
for item in loadedMods["conarm"].items {
        addItemStage(stages.apprentice_tinkerer, item);
}

# =========================================== #
# Skilled
# =========================================== #

stageTinkersPart(stages.skilled_tinkerer, <tconstruct:sharpening_kit>, "tconstruct:sharpening_kit");

mods.recipestages.Recipes.addShapedMirrored(
    "contenttweaker_research_shuriken", 
    stages.skilled_tinkerer, 
    <contenttweaker:research_shuriken>, 
    [
        [<tconstruct:knife_blade>.withTag({Material: "flint"}), <tconstruct:knife_blade>.withTag({Material: "bone"}), <tconstruct:knife_blade>.withTag({Material: "flint"})],
        [<tconstruct:knife_blade>.withTag({Material: "bone"}), null, <tconstruct:knife_blade>.withTag({Material: "bone"})], 
        [<tconstruct:knife_blade>.withTag({Material: "flint"}), <tconstruct:knife_blade>.withTag({Material: "bone"}), <tconstruct:knife_blade>.withTag({Material: "flint"})]
    ]);

# =========================================== #
# Expert
# =========================================== #

stageTinkersPart(stages.expert_tinkerer, <tconstruct:large_plate>, "tconstruct:large_plate");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:tough_binding>, "tconstruct:tough_binding");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:tough_tool_rod>, "tconstruct:tough_tool_rod");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:excavator_head>, "tconstruct:excavator_head");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:hammer_head>, "tconstruct:hammer_head");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:large_sword_blade>, "tconstruct:large_sword_blade");
stageTinkersPart(stages.expert_tinkerer, <tconstruct:broad_axe_head>, "tconstruct:broad_axe_head");

stageTinkersTool(stages.expert_tinkerer, <tconstruct:longbow>, "tconstruct:longbow");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:crossbow>, "tconstruct:crossbow");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:bolt>, "tconstruct:bolt");

stageTinkersTool(stages.expert_tinkerer, <tconstruct:hammer>, "tconstruct:hammer");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:excavator>, "tconstruct:excavator");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:lumberaxe>, "tconstruct:lumberaxe");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:cleaver>, "tconstruct:cleaver");
stageTinkersTool(stages.expert_tinkerer, <tconstruct:scythe>, "tconstruct:scythe");

    val bolts = [
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["wood", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["bone", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["blaze", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["reed", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["ice", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["endrod", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["stone", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["sponge", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["magmaslime", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["blueslime", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["slime", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["paper", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["flint", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["cactus", "iron"]}}),
        <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["plant_fiber", "iron"]}})
    ] as IItemStack[];

    for item in bolts {
        addItemStage(stages.expert_tinkerer, item);
    }
    
# =========================================== #
# Master
# =========================================== #

mods.TinkerStages.addModifierStage(stages.master_tinkerer, "silktouch");
mods.TinkerStages.addModifierStage(stages.master_tinkerer, "luck");
mods.TinkerStages.addModifierStage(stages.master_tinkerer, "reinforced");