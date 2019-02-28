#priority 1250
#modloaded natura
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI.removeAndHide;

var trapdoorsToAdd as IItemStack[] = [
    <natura:maple_trap_door>,
    <natura:silverbell_trap_door>,
    <natura:amaranth_trap_door>,
    <natura:tiger_trap_door>,
    <natura:willow_trap_door>,
    <natura:eucalyptus_trap_door>,
    <natura:hopseed_trap_door>,
    <natura:sakura_trap_door>,
    <natura:redwood_trap_door>
];

var fencesToAdd as IItemStack[] = [
    <natura:silverbell_fence>,
    <natura:amaranth_fence>,
    <natura:tiger_fence>,
    <natura:willow_fence>,
    <natura:eucalyptus_fence>,
    <natura:hopseed_fence>,
    <natura:sakura_fence>,
    <natura:redwood_fence>,
    <rustic:fence_olive>,
    <rustic:fence_ironwood>,
    <traverse:fir_fence>
];

var gatesToAdd as IItemStack[] = [
    <natura:silverbell_fence_gate>,
    <natura:amaranth_fence_gate>,
    <natura:tiger_fence_gate>,
    <natura:willow_fence_gate>,
    <natura:eucalyptus_fence_gate>,
    <natura:hopseed_fence_gate>,
    <natura:sakura_fence_gate>,
    <natura:redwood_fence_gate>,
    <rustic:fence_gate_olive>,
    <rustic:fence_gate_ironwood>,
    <traverse:fir_fence_gate>
];

var pressurePlatesToAdd as IItemStack[] = [
    <natura:silverbell_pressure_plate>,
    <natura:amaranth_pressure_plate>,
    <natura:tiger_pressure_plate>,
    <natura:willow_pressure_plate>,
    <natura:eucalyptus_pressure_plate>,
    <natura:hopseed_pressure_plate>,
    <natura:sakura_pressure_plate>,
    <natura:redwood_pressure_plate>
];

var buttonsToAdd as IItemStack[] = [
    <natura:silverbell_button>,
    <natura:amaranth_button>,
    <natura:tiger_button>,
    <natura:willow_button>,
    <natura:eucalyptus_button>,
    <natura:hopseed_button>,
    <natura:sakura_button>,
    <natura:redwood_button>
];

var doorsToAdd as IItemStack[] = [
    <natura:overworld_doors>,
    <natura:overworld_doors:1>,
    <natura:overworld_doors:2>,
    <natura:overworld_doors:3>,
    <natura:overworld_doors:4>,
    <natura:overworld_doors:5>,
    <natura:overworld_doors:6>,
    <natura:overworld_doors:7>,
    <rustic:olive_door>,
    <rustic:ironwood_door>,
    <traverse:fir_door>
];

for item in trapdoorsToAdd {
    <ore:trapdoorWood>.add(item);
}

for item in fencesToAdd {
    <ore:fenceWood>.add(item);
}

for item in gatesToAdd {
    <ore:fenceGateWood>.add(item);
}

for item in pressurePlatesToAdd {
    <ore:pressurePlateWood>.add(item);

}

for item in buttonsToAdd {
    <ore:buttonWood>.add(item);

}

for item in doorsToAdd {
    <ore:doorWood>.add(item);
}

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
    ] as IItemStack[];

for item in sticks {
    <ore:stickWood>.remove(item);
    removeAndHide(item);
}
