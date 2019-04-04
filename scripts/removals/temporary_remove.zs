#priority 1000
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;


val removals = [
    
    <spartanshields:shield_botania_manasteel>,
    <spartanshields:shield_botania_terrasteel>,
    <spartanshields:shield_botania_elementium>

] as IItemStack[];

for item in removals {
    removeAndHide(item);
}