#priority 1
import crafttweaker.item.IItemStack;

# Furnace Smelting
var furnaceRecipes as IItemStack[] = [
    <claybucket:claybucket>
];

for item in furnaceRecipes {
    furnace.remove(item);
}