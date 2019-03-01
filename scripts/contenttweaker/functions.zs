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

function createRegisterLeaves(name as string) {
    val block = VanillaFactory.createBlock(name, <blockmaterial:leaves>);
    block.setBlockHardness(0.2);
    block.setBlockResistance(3.0);
    block.setToolClass("axe");
    block.setBlockSoundType(<soundtype:plant>);
    block.setPassable(true);
    block.setFullBlock(false);
    block.setTranslucent(true);
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