#priority 1
import crafttweaker.item.IItemStack;

recipes.removeByRecipeName("backpack:backpack_small");
recipes.removeByRecipeName("backpack:recolor_backpack");
recipes.removeByRecipeName("backpack:backpack_medium");
recipes.removeByRecipeName("backpack:backpack_big");
recipes.removeByRecipeName("harvestcraft:wool_0");
recipes.removeByRecipeName("minecraft:string_to_wool");
recipes.removeByRecipeName("harvestcraft:freshmilkitem_cropalmond");
recipes.removeByRecipeName("harvestcraft:delightedmealitem_foodzucchinifries");
recipes.removeByRecipeName("harvestcraft:baconmushroomburgeritem_cropwhitemushroom");

recipes.removeByRegex(".*itemsalt.*");
recipes.removeByRegex(".*foodsalt.*");