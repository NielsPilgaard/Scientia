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

# Stock, used for Soup
recipes.remove(<harvestcraft:stockitem>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone> * 2, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone>, <liquid:water>, 2, true);
mods.inspirations.Cauldron.addFluidRecipe(<harvestcraft:stockitem>, <minecraft:bowl>, <liquid:stock>, 1);
mods.inspirations.Cauldron.addFillRecipe(<harvestcraft:stockitem>, <liquid:stock>, 1, <minecraft:bowl>);

# Soups!
createSoup(<liquid:pumpkin_soup>, <harvestcraft:pumpkinsoupitem>, <minecraft:pumpkin>, 2);
createSoup(<liquid:carrot_soup>, <harvestcraft:carrotsoupitem>, <minecraft:carrot>, 8);
createSoup(<liquid:potato_soup>, <harvestcraft:potatosoupitem>, <minecraft:potato>, 8);
createSoup(<liquid:spider_eye_soup>, <harvestcraft:spidereyesoupitem>, <minecraft:spider_eye>, 2);
createSoup(<liquid:tomato_soup>, <harvestcraft:tomatosoupitem>, <rustic:tomato>, 8);
createSoup(<liquid:onion_soup>, <harvestcraft:onionsoupitem>, <harvestcraft:onionitem>, 16);
createSoup(<liquid:beetroot_soup>, <harvestcraft:beetsoupitem>, <minecraft:beetroot>, 8);
createSoup(<liquid:cactus_soup>, <harvestcraft:cactussoupitem>, <minecraft:cactus>, 4);
createSoup(<liquid:rabbit_stew>, <minecraft:rabbit_stew>, <inspirations:materials:5>, 4);
createSoup(<liquid:mushroom_stew>, <minecraft:mushroom_stew>, <inspirations:materials:4>, 4);

# Seed Soup is a bit special, the createSoup method creates duplicates of fluid/fill recipes, so we do it manually.
recipes.remove(<harvestcraft:seedsoupitem>);

for item in <ore:listAllseed>.items {
    mods.inspirations.Cauldron.addFluidTransform(<liquid:seed_soup>, item * 8, <liquid:stock>, 4, true);
    mods.inspirations.Cauldron.addFluidTransform(<liquid:seed_soup>, item * 4, <liquid:stock>, 2, true);
    mods.inspirations.Cauldron.addFluidTransform(<liquid:seed_soup>, item * 2, <liquid:stock>, 1, true);   
}

mods.inspirations.Cauldron.addFluidRecipe(<harvestcraft:seedsoupitem>, <minecraft:bowl>, <liquid:seed_soup>, 1);
mods.inspirations.Cauldron.addFillRecipe(<harvestcraft:seedsoupitem>, <liquid:seed_soup>, 1, <minecraft:bowl>);
















