#priority 101
#modloaded inspirations
import crafttweaker.item.IItemStack; 
import crafttweaker.item.IIngredient; 
import crafttweaker.liquid.ILiquidStack;

function createSoup(soupFluid as ILiquidStack, soupItem as IItemStack, ingredient as IIngredient, ingredientAmount as int) {
    mods.inspirations.Cauldron.addFluidTransform(soupFluid, ingredient * ingredientAmount, <liquid:stock>, 4, true);
    if (ingredientAmount % 2 == 0) {
        mods.inspirations.Cauldron.addFluidTransform(soupFluid, ingredient * (ingredientAmount / 2), <liquid:stock>, 2, true);
        if (ingredientAmount / 2 % 2 == 0) {
            mods.inspirations.Cauldron.addFluidTransform(soupFluid, ingredient * (ingredientAmount / 4), <liquid:stock>, 1, true);   
        }
    }
    mods.inspirations.Cauldron.addFluidRecipe(soupItem, <minecraft:bowl>, soupFluid, 1);
}