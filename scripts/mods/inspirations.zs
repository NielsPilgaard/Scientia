#priority 100
#modloaded inspirations
import crafttweaker.item.IItemStack; 
import crafttweaker.item.IIngredient; 
import crafttweaker.liquid.ILiquidStack;

import scripts.mods.functions.createSoup;

# Liquid Tannin
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 8, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 6, <liquid:water>, 3, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 4, <liquid:water>, 2, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 2, <liquid:water>, 1, true);

# Soaked Leather
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather>, <contenttweaker:processed_hide>, <liquid:tannin>, 1);

var bowl as IItemStack = <minecraft:bowl>;

# Stock, used for Soup
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone> * 2, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone>, <liquid:water>, 2, true);
mods.inspirations.Cauldron.addFluidRecipe(<harvestcraft:stockitem>, bowl, <liquid:stock>, 1);

# Soup
mods.inspirations.Cauldron.addFluidTransform(<liquid:carrot_soup>, <ore:cropCarrot> * 8, <liquid:stock>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:potato_soup>, <ore:cropPotato> * 8, <liquid:stock>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:spider_eye_soup>, <minecraft:spider_eye> * 2, <liquid:stock>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tomato_soup>, <ore:cropTomato> * 8, <liquid:stock>, 4, true);
# Come up with a way to make Garden Soup, since it takes ingredients that some of other soups also require
# mods.inspirations.Cauldron.addFluidTransform(<liquid:garden_soup>, <ore:crop> * 2, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:onion_soup>, <ore:cropOnion> * 16, <liquid:stock>, 4, true);



createSoup(<liquid:pumpkin_soup>, <harvestcraft:pumpkinsoupitem>, <minecraft:pumpkin>, 2);










