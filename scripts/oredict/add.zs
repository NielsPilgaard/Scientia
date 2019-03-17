#priority 1250
import crafttweaker.item.IItemStack;

# ContentTweaker Research
    <ore:research>.add(<contenttweaker:research_note>);

# Ironberry to Concord Grape
    <ore:cropGrape>.add(<rustic:ironberries>);

# "new" Stones to Stone oredict
    <ore:stone>.add(<minecraft:stone>);
    <ore:stone>.add(<minecraft:stone:1>);
    <ore:stone>.add(<minecraft:stone:3>);
    <ore:stone>.add(<minecraft:stone:5>);

# Fiber
    <ore:fiber>.add(<immersiveengineering:material:4>);
    <ore:fiber>.add(<contenttweaker:plant_fiber>);

# Debarked Logs
    <ore:logDebarked>.add(<hitwithaxe:debarked_acacia>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_oak>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_spruce>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_birch>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_jungle>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_fir>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_dark_oak>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_amaranth>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_eucalyptus>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_hopseed>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_ironwood>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_maple>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_olive>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_sakura>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_silverbell>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_tiger>);
    <ore:logDebarked>.add(<hitwithaxe:debarked_willow>);
	<ore:logDebarked>.add(<hitwithaxe:debarked_ancient>);

# Dynamic Tree Branches
var dynamicBranches as IItemStack[] = [
    <dynamictrees:oakbranch>,
    <dynamictrees:oakbranchx>,
    <dynamictrees:sprucebranch>,
    <dynamictrees:sprucebranchx>,
    <dynamictrees:birchbranch>,
    <dynamictrees:junglebranch>,
    <dynamictrees:acaciabranch>,
    <dynamictrees:darkoakbranch>,
    <dynamictrees:darkoakbranchx>,
    <dttraverse:firbranch>,
    <dttraverse:firbranchx>,
    <rustic:olivebranch>,
    <rustic:ironwoodbranch>,
    <rustic:ironwoodbranchx>
];

for branch in dynamicBranches {
    <ore:branchWood>.add(branch);
}

# Sign
    <ore:signWood>.add(<minecraft:sign>);

# Music Disc
    <ore:record>.add(<botania:recordgaia1>);
    <ore:record>.add(<botania:recordgaia2>);

# trapdoorWood
    <ore:trapdoorWood>.add(<engineersdoors:trapdoor_treated>);

# slabWood
    <ore:slabWood>.add(<naturesaura:ancient_slab>);
    <ore:slabWood>.add(<botania:livingwood0slab>);
    <ore:slabWood>.add(<botania:livingwood1slab>);
    <ore:slabWood>.add(<botania:dreamwood0slab>);
    <ore:slabWood>.add(<botania:dreamwood1slab>);
    <ore:slabWood>.add(<botania:shimmerwoodplanks0slab>);

# stairWood / plankWood
    <ore:stairWood>.add(<naturesaura:ancient_stairs>);
    <ore:plankWood>.add(<naturesaura:ancient_planks>);

for stair, plank in loglessStairPlankMap {
    <ore:plankWood>.add(plank);
    <ore:stairWood>.add(stair);
}

# logWood
    <ore:logWood>.add(<naturesaura:ancient_log>);

# Maple Button / Pressure Plate / Fence / Fence Gate

    <ore:buttonWood>.add(<natura:maple_button>);
    <ore:pressurePlateWood>.add(<natura:maple_pressure_plate>);
    <ore:fenceWood>.add(<natura:maple_fence>);
    <ore:fenceGateWood>.add(<natura:maple_fence_gate>);

# doorWood
    <ore:doorWood>.addAll(<ore:doorTreatedWood>);

# fenceGateWood
    <ore:fenceGateWood>.addAll(<ore:fencegateTreatedWood>);

# cauldronWood
for woodtype in woodtypes {
    if (!isNull(woodtypes[woodtype].cauldron)) {
        <ore:cauldronWood>.add(woodtypes[woodtype].cauldron.items[0]);
    }
}

# cauldronStone
    <ore:cauldronStone>.add(<morecauldrons:cobble_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:brick_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:stone_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:granite_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:smooth_granite_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:diorite_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:smooth_diorite_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:andesite_cauldron>);
    <ore:cauldronStone>.add(<morecauldrons:smooth_andesite_cauldron>);

# dye
    <ore:dye>.add(<inspirations:dyed_bottle:*>);

# fertilizer
    <ore:fertilizer>.add(<minecraft:dye:15>);
    <ore:fertilizer>.add(<farmingforblockheads:fertilizer>);
    <ore:fertilizer>.add(<farmingforblockheads:fertilizer:1>);
    <ore:fertilizer>.add(<farmingforblockheads:fertilizer:2>);

# flowerRed
    <ore:flowerRed>.add(<minecraft:double_plant:4>);

# flowerYellow
    <ore:flowerYellow>.add(<minecraft:double_plant>);
	
# alfheimPortalFrame
	<ore:alfheimPortalFrame>.add(<botania:alfheimportal>);
	<ore:alfheimPortalFrame>.add(<botania:livingwood:*>);
	<ore:alfheimPortalFrame>.add(<botania:livingwood0wall>);

# An oredict for all Artisan's Tools
    <ore:artisansTool>.addAll(<ore:artisansCutters>);
    <ore:artisansTool>.addAll(<ore:artisansHammer>);
    <ore:artisansTool>.addAll(<ore:artisansFramingHammer>);
    <ore:artisansTool>.addAll(<ore:artisansHandsaw>);
    <ore:artisansTool>.addAll(<ore:artisansCuttingBoard>);
    <ore:artisansTool>.addAll(<ore:artisansPan>);
    <ore:artisansTool>.addAll(<ore:artisansDriver>);
    <ore:artisansTool>.addAll(<ore:artisansSpanner>);
    <ore:artisansTool>.addAll(<ore:artisansLens>);
    <ore:artisansTool>.addAll(<ore:artisansSifter>);
    <ore:artisansTool>.addAll(<ore:artisansCutter>);
    <ore:artisansTool>.addAll(<ore:artisansPliers>);
    <ore:artisansTool>.addAll(<ore:artisansAthame>);
    <ore:artisansTool>.addAll(<ore:artisansGrimoire>);
    <ore:artisansTool>.addAll(<ore:artisansChisel>);
    <ore:artisansTool>.addAll(<ore:artisansCarver>);
    <ore:artisansTool>.addAll(<ore:artisansRazor>);
    <ore:artisansTool>.addAll(<ore:artisansQuill>);
    <ore:artisansTool>.addAll(<ore:artisansNeedle>);
    <ore:artisansTool>.addAll(<ore:artisansMortar>);
    <ore:artisansTool>.addAll(<ore:artisansKnife>);

# foodSoup
    <ore:foodSoup>.add(<harvestcraft:pumpkinsoupitem>);
    <ore:foodSoup>.add(<harvestcraft:carrotsoupitem>);
    <ore:foodSoup>.add(<harvestcraft:potatosoupitem>);
    <ore:foodSoup>.add(<harvestcraft:spidereyesoupitem>);
    <ore:foodSoup>.add(<harvestcraft:tomatosoupitem>);
    <ore:foodSoup>.add(<harvestcraft:beetsoupitem>);
    <ore:foodSoup>.add(<harvestcraft:cactussoupitem>);
    <ore:foodSoup>.add(<harvestcraft:seedsoupitem>);
    <ore:foodSoup>.add(<harvestcraft:onionsoupitem>);

# treeSapling
    <ore:treeSapling>.add(<treetweaker:livingwood>);
    <ore:treeSapling>.add(<naturesaura:ancient_sapling>);
    <ore:treeSapling>.add(<treetweaker:dreamwood>);