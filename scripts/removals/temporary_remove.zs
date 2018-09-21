#priority 1000
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;


val removals = [
    
    <spartanshields:shield_basic_enderium>,
    <spartanshields:shield_basic_signalum>,
    <spartanshields:shield_basic_lumium>,
    <spartanshields:shield_botania_manasteel>,
    <spartanshields:shield_botania_terrasteel>,
    <spartanshields:shield_botania_elementium>

] as IItemStack[];

for item in removals {
    removeAndHide(item);
}