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

# dye
    <ore:dye>.add(<inspirations:dyed_bottle:*>);

# fertilizer
    <ore:fertilizer>.add(<minecraft:dye:15>);