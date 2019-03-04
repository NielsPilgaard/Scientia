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
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather> * 2, <contenttweaker:processed_hide> * 2, <liquid:tannin>, 2);
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather> * 3, <contenttweaker:processed_hide> * 3, <liquid:tannin>, 3);
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather> * 4, <contenttweaker:processed_hide> * 4, <liquid:tannin>, 4);

# Stock, used for Soup
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone> * 2, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone>, <liquid:water>, 2, true);
mods.inspirations.Cauldron.addFluidRecipe(<harvestcraft:stockitem>, bowl, <liquid:stock>, 1);

# Soups!
createSoup(<liquid:pumpkin_soup>, <harvestcraft:pumpkinsoupitem>, <minecraft:pumpkin>, 2);
createSoup(<liquid:carrot_soup>, <harvestcraft:carrotsoupitem>, <minecraft:carrot>, 8);
createSoup(<liquid:potato_soup>, <harvestcraft:potatosoupitem>, <minecraft:potato>, 8);
createSoup(<liquid:spider_eye_soup>, <harvestcraft:spidereyesoupitem>, <minecraft:spider_eye>, 2);
createSoup(<liquid:tomato_soup>, <harvestcraft:tomatosoupitem>, <harvestcraft:tomatoitem>, 8);
createSoup(<liquid:onion_soup>, <harvestcraft:onionsoupitem>, <harvestcraft:onionitem>, 16);














