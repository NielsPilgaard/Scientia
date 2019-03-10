import crafttweaker.item.IItemStack;
import mods.jei.JEI.hide;

var itemsToHide = [

    <conarm:armorforge>.withTag({textureBlock: {id: "libvulpes:metal0", Count: 1 as byte, Damage: 5 as short}}),
    <conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
    <conarm:armorforge>.withTag({textureBlock: {id: "libvulpes:metal0", Count: 1 as byte, Damage: 9 as short}}),
    
    <villagenames:villagebook>,
    <villagenames:fortressbook>,
    <villagenames:mineshaftbook>,
    <villagenames:mansionbook>,
    <villagenames:monumentbook>,
    <villagenames:strongholdbook>,
    <villagenames:templebook>

] as IItemStack[];

for item in itemsToHide {
    hide(item);
}