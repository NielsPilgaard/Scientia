#priority 100
import crafttweaker.item.IItemStack;

import mods.popcornsmelting.addRecipe;

var smeltingRecipes as IItemStack[IItemStack] = {
   <claybucket:claybucket> : <claybucket:unfiredclaybucket>

};

for output, input in smeltingRecipes {
    mods.popcornsmelting.addRecipe(output, input, 15);
}