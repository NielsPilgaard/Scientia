#priority 2900
#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.conarm.ArmorTrait;

val plantFiber = ExtendedMaterialBuilder.create("plant_fiber");

plantFiber.color = 0x7F6346;
plantFiber.craftable = true;
plantFiber.addItem(<item:contenttweaker:plant_fiber>);
plantFiber.representativeItem = <item:contenttweaker:plant_fiber>;
plantFiber.localizedName = "Plant Fiber";
plantFiber.itemLocalizer = 
function(thisMaterial, itemName){
    return "Plant Fiber " + itemName;
};
plantFiber.addHeadMaterialStats(20, 1.8, 1.8, 0);
plantFiber.addExtraMaterialStats(25);
plantFiber.addHandleMaterialStats(0.5, 10);
plantFiber.addBowMaterialStats(1.3, 0.8, 0);
plantFiber.addCoreMaterialStats(10, 2.5);
plantFiber.addPlatesMaterialStats(0.8, 5, 0);
plantFiber.addTrimMaterialStats(0.4);
plantFiber.addMaterialTrait("ecological");
plantFiber.addProjectileMaterialStats();
plantFiber.register();