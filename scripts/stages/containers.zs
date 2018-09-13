val allStages as string[] = stages.valueSet;

mods.recipestages.Recipes.setPrintContainers(true);

# AE2 Crafting Terminal
mods.recipestages.Recipes.setPackageStage("appeng", allStages);

# RFtools All Crafters
mods.recipestages.Recipes.setPackageStage("mcjty.rftools.blocks.crafter", allStages);
