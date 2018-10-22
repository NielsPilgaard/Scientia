#priority 1250

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.removeAndHide;

# Natura
val craftingTables = [
    <natura:overworld_workbenches:8>,
    <natura:overworld_workbenches:7>,
    <natura:overworld_workbenches:6>,
    <natura:overworld_workbenches:5>,
    <natura:overworld_workbenches:4>,
    <natura:overworld_workbenches:3>,
    <natura:overworld_workbenches:2>,
    <natura:overworld_workbenches:1>,
    <natura:overworld_workbenches>
    ] as IItemStack[];

for item in craftingTables {
    <ore:craftingTableWood>.remove(item);
    <ore:crafterWood>.remove(item);
    removeAndHide(item);
}

val bookshelves = [
    <natura:overworld_bookshelves:8>,
    <natura:overworld_bookshelves:7>,
    <natura:overworld_bookshelves:6>,
    <natura:overworld_bookshelves:5>,
    <natura:overworld_bookshelves:4>,
    <natura:overworld_bookshelves:3>,
    <natura:overworld_bookshelves:2>,
    <natura:overworld_bookshelves:1>,
    <natura:overworld_bookshelves>
    ] as IItemStack[];

for item in bookshelves {
    <ore:bookshelf>.remove(item);
    removeAndHide(item);
}

val sticks = [
    <natura:sticks:8>,
    <natura:sticks:7>,
    <natura:sticks:6>,
    <natura:sticks:5>,
    <natura:sticks:4>,
    <natura:sticks:3>,
    <natura:sticks:2>,
    <natura:sticks:1>,
    <natura:sticks>,
    <natura:sticks:*>
    ] as IItemStack[];

for item in sticks {
    <ore:stickWood>.remove(item);
    removeAndHide(item);
}

<ore:string>.remove(<primal_tech:twine>);