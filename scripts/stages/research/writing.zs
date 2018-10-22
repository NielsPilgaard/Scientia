#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.writing;

val items = [

    <bibliocraft:biblioclipboard>,
    <minecraft:book>,
    <minecraft:writable_book>,
    <minecraft:written_book>

] as IItemStack[];

for item in items {
    mods.ItemStages.addItemStage(stage, item);
}

mods.ItemStages.addItemStage(stage, <ore:signWood>);
mods.ItemStages.addItemStage(stage, <ore:bookshelf>);

mods.recipestages.Recipes.addShapedMirrored(
    "bibliocraft_clipboard_custom", stage, 
    <bibliocraft:biblioclipboard>, 
    [
        [<ore:paper>, materials.iron.nugget, <ore:paper>],
        [<ore:paper>, <bibliocraft:framingsheet>, <ore:paper>], 
        [<ore:paper>, <ore:paper>, <ore:paper>]
    ]);
