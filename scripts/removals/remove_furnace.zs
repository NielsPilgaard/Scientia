#priority 1900
import crafttweaker.item.IItemStack;

# Furnace Smelting
var furnaceRecipes as IItemStack[] = [
    <claybucket:claybucket>
];

for item in furnaceRecipes {
    furnace.remove(item);
}

for material in materials {
    var ingot = materials[material].ingot;
    if (!isNull(ingot)) {
	    furnace.remove(ingot);
    }
}