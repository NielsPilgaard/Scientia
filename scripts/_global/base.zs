#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

global sheet as IItemStack = <bibliocraft:framingsheet>;
global board as IItemStack = <bibliocraft:framingboard>;
global stick as IItemStack = <minecraft:stick>;
global paper as IItemStack = <minecraft:paper>;
global book as IItemStack = <minecraft:book>;
global stone as IItemStack = <minecraft:stone>;
global cobble as IItemStack = <minecraft:cobblestone>;

global preferredOutputMods as string[] = [
	"minecraft",
	"contenttweaker",
	"immersiveengineering"
];

global armoreableEntities as string[] = [
        "minecraft:husk",
        "minecraft:skeleton",
        "minecraft:stray",
        "minecraft:vex",
        "minecraft:zombie",
        "minecraft:zombie_villager",
        "minecraft:zombie_pigman",
        "minecraft:wither_skeleton"
];