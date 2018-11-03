#priority 2000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.MaterialPartData;

import crafttweaker.item.IItemStack;

function createRegisterItem(name as string, stacksize as int) {
    val item = VanillaFactory.createItem(name);
    item.maxStackSize = stacksize;
    item.register();
}

function createRegisterBlockOre(name as string, toolLevel as int) {
    val block = VanillaFactory.createBlock(name, <blockmaterial:rock>);
    block.setBlockHardness(3.8);
    block.setBlockResistance(30.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(toolLevel);
    block.setBlockSoundType(<soundtype:stone>);
    block.register();
}

function createRegisterDirtOre(name as string, toolLevel as int) {
    val block = VanillaFactory.createBlock(name, <blockmaterial:ground>);
    block.setBlockHardness(3.0);
    block.setBlockResistance(15.0);
    block.setToolClass("shovel");
    block.setToolLevel(toolLevel);
    block.setBlockSoundType(<soundtype:ground>);
    block.register();
}

function addDefaultMoltenData(moltenData as MaterialPartData) {
	moltenData.addDataValue("density", "4000");
	moltenData.addDataValue("viscosity", "3000");
	moltenData.addDataValue("temperature", "750");
	moltenData.addDataValue("vaporize", "false");
}

function addDefaultOreData(oreData as MaterialPartData) {
	oreData.addDataValue("variants", "minecraft:stone");
	oreData.addDataValue("hardness", "3.8");
	oreData.addDataValue("resistance", "25");
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("harvestLevel", "2");
}