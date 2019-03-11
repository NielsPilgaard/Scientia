#loader preinit
#priority 100
import mods.treetweaker.TreeFactory;

var livingwood = TreeFactory.createTree("livingwood");
livingwood.setTreeType("LARGE_OAK");
livingwood.setLog("botania:livingwood");
livingwood.setLeaf("contenttweaker:leaves_livingwood");
#livingwood.setLeaf("minecraft:leaves");
livingwood.extraTreeHeight = 8;
livingwood.minTreeHeight = 12;
livingwood.generationFrequency = 2;
livingwood.setGenBiome("traverse:meadow");
livingwood.setDimWhitelist(2);
livingwood.addSapling();
livingwood.register();

var dreamwood = TreeFactory.createTree("dreamwood");
dreamwood.setTreeType("LARGE_CANOPY");
dreamwood.setLog("botania:dreamwood");
dreamwood.setLeaf("contenttweaker:leaves_dreamwood");
#dreamwood.setLeaf("minecraft:leaves");
dreamwood.extraTreeHeight = 10;
dreamwood.minTreeHeight = 15;
dreamwood.generationFrequency = 6;
dreamwood.setGenBiome("traverse:meadow");
dreamwood.extraThick = true;
dreamwood.setDimWhitelist(2);
dreamwood.addSapling();
dreamwood.register();