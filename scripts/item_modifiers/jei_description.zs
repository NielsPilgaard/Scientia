import mods.jei.JEI.addDescription;

# Salt
addDescription(<harvestcraft:saltitem>, 
"Salt can only be acquired through the Water Filter.");

# Water Filter
addDescription(<harvestcraft:waterfilter>, 
"The Water Filter produces Salt and Fresh Water.", 
"You will need to place Woven Cotton in its inventory, and have flowing water above it.");

# Plant Fiber
addDescription(<contenttweaker:plant_fiber>,
"Plant Fiber has a chance to drop from Grass.");

# Rock
addDescription(<contenttweaker:rock>, 
"Rocks drop from Stone and Cobblestone, until you've advanced enough to harvest it with greater precision.");

# Flint
addDescription(<minecraft:flint>,
"Flint does not drop from Gravel. To obtain it, dig through Gravel, Grass, Coarse Dirt or Dirt by shift-right clicking it.");

# Stick
addDescription(<minecraft:stick>,
"Sticks drop from leaves.");


# Blood Magic Wills
var willText = "Obtained through the Resonance of the Faceted Crystal ritual.";

addDescription(<bloodmagic:item_demon_crystal>, 
"Obtained through the Gathering of the Forsaken Souls ritual.");

addDescription(<bloodmagic:item_demon_crystal:1>, willText);
addDescription(<bloodmagic:item_demon_crystal:2>, willText);
addDescription(<bloodmagic:item_demon_crystal:3>, willText);
addDescription(<bloodmagic:item_demon_crystal:4>, willText);

# Blood Magic Guide
addDescription(<guideapi:bloodmagic-guide>, 
"Sneak-Right-Click on a Blood Altar with this book, and it will show you where to place the appropriate blocks for the different Blood Altar tiers. Right-click to change tier.");

