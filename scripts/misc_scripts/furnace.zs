#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var defaultXP as int = 1;

var furnaceRecipes as IIngredient[IItemStack] = {
   <minecraft:coal:1> : <ore:logDebarked>,
   <minecraft:bread> : <ore:foodDough>
};

for output, input in furnaceRecipes {
	furnace.addRecipe(output, input, defaultXP);
}