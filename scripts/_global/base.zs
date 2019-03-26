#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

global sheet as IItemStack = <bibliocraft:framingsheet>;
global board as IItemStack = <bibliocraft:framingboard>;
global stick as IItemStack = <minecraft:stick>;
global book as IItemStack = <minecraft:book>;
global paper as IItemStack = <minecraft:paper>;
global stone as IItemStack = <minecraft:stone>;
global cobble as IItemStack = <minecraft:cobblestone>;

global colors as IIngredient[string] = {
	white : <botania:dye>,
	orange : <botania:dye:1>,
	magenta : <botania:dye:2>,
	light_blue : <botania:dye:3>,
	yellow : <botania:dye:4>,
	lime : <botania:dye:5>,
	pink : <botania:dye:6>,
	gray : <botania:dye:7>,
	light_gray : <botania:dye:8>,
	cyan : <botania:dye:9>,
	purple : <botania:dye:10>,
	blue : <botania:dye:11>,
	brown : <botania:dye:12>,
	green : <botania:dye:13>,
	red : <botania:dye:14>,
	black : <botania:dye:15>
};

global preferredOutputMods as string[] = [
	"minecraft",
	"contenttweaker",
	"immersiveengineering",
	"tconstruct",
    "forestry",
	"chisel"
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