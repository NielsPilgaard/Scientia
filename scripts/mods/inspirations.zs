#priority 100
#modloaded inspirations
import crafttweaker.item.IItemStack; 
import crafttweaker.item.IIngredient; 

# Liquid Tannin
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <contenttweaker:tannin> * 8, <liquid:water>);

# Soaked Leather
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:soaked_leather> * 4, <contenttweaker:processed_hide> * 4, <liquid:tannin>, 4);