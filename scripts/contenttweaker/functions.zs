#priority 3500
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

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
    block.setBlockHardness(2.5);
    block.setBlockResistance(15.0);
    block.setToolClass("shovel");
    block.setToolLevel(toolLevel);
    block.setBlockSoundType(<soundtype:ground>);
    block.register();
}

function createRegisterFluid(name as string, hexColor as string) {
    VanillaFactory.createFluid(name, Color.fromHex(hexColor)).register();
}

function defaultMoltenData(molten as MaterialPartData) {
    molten.addDataValue("density", "6000");
	molten.addDataValue("viscosity", "3000");
	molten.addDataValue("temperature", "1500");
}