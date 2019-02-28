#loader preinit
#priority 100
import mods.treetweaker.TreeFactory;

var livingwood_large_oak = TreeFactory.createTree("livingwood_large_oak");
livingwood_large_oak.setTreeType("LARGE_OAK");
livingwood_large_oak.setLog("botania:livingwood");
livingwood_large_oak.setLeaf("minecraft:leaves");
livingwood_large_oak.extraTreeHeight = 12;
livingwood_large_oak.minTreeHeight = 12;
livingwood_large_oak.generationFrequency = 5;
livingwood_large_oak.setGenBiome("traverse:meadow");
livingwood_large_oak.setDimWhitelist(2);
livingwood_large_oak.addSapling();
livingwood_large_oak.register();

var dreamwood = TreeFactory.createTree("dreamwood");
dreamwood.setTreeType("LARGE_CANOPY");
dreamwood.setLog("botania:dreamwood");
dreamwood.setLeaf("minecraft:leaves");
dreamwood.extraTreeHeight = 30;
dreamwood.minTreeHeight = 15;
dreamwood.generationFrequency = 13;
dreamwood.setGenBiome("traverse:meadow");
dreamwood.extraThick = true;
dreamwood.setDimWhitelist(2);
dreamwood.addSapling();
dreamwood.register();