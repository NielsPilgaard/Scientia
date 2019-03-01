#priority 100
#modloaded inspirations
import crafttweaker.item.IItemStack; 
import crafttweaker.item.IIngredient; 

# Liquid Tannin
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 8, <liquid:water>);

# Soaked Leather
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather> * 4, <contenttweaker:processed_hide> * 4, <liquid:tannin>, 4);

# Soup
mods.inspirations.Cauldron.addFluidTransform(<liquid:pumpkin_soup>, <ore:cropPumpkin> * 2, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:carrot_soup>, <ore:cropCarrot> * 2, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:potato_soup>, <ore:cropPotato> * 2, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:spider_eye_soup>, <minecraft:spider_eye>, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tomato_soup>, <ore:cropTomato> * 2, <liquid:stock>);
# Come up with a way to make Garden Soup, since it takes ingredients that some of other soups also require
# mods.inspirations.Cauldron.addFluidTransform(<liquid:garden_soup>, <ore:crop> * 2, <liquid:stock>);
mods.inspirations.Cauldron.addFluidTransform(<liquid:onion_soup>, <ore:cropOnion> * 4, <liquid:stock>);

# Stock, used for Soup
mods.inspirations.Cauldron.addFluidTransform(<liquid:stock>, <ore:bone> * 2, <liquid:water>);
