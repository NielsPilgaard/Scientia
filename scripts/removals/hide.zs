import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;

var itemsToHide = [
    <conarm:armorforge>.withTag({textureBlock: {id: "libvulpes:metal0", Count: 1 as byte, Damage: 5 as short}}),
    <conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
    <conarm:armorforge>.withTag({textureBlock: {id: "libvulpes:metal0", Count: 1 as byte, Damage: 9 as short}})
    
] as IItemStack[];

for item in itemsToHide {
    hide(item);
}