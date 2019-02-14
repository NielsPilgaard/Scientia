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
//livingwood_large_oak.setGenBiome("traverse:meadow");
livingwood_large_oak.setDimWhitelist(2);
livingwood_large_oak.addSapling();
livingwood_large_oak.register();

var dreamwood_braided = TreeFactory.createTree("dreamwood_braided");
dreamwood_braided.setTreeType("BRAIDED");
dreamwood_braided.setLog("botania:dreamwood");
dreamwood_braided.extraTreeHeight = 30;
dreamwood_braided.minTreeHeight = 15;
dreamwood_braided.generationFrequency = 13;
dreamwood_braided.extraThick = true;
//dreamwood_braided.setGenBiome("traverse:meadow");
dreamwood_braided.setDimWhitelist(2);
dreamwood_braided.addSapling();
dreamwood_braided.register();