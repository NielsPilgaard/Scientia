#priority 100
import mods.ItemStages.addItemStage;
# =========================================== #
# Novice
# =========================================== #

addItemStage(stages.novice_architect, <betterbuilderswands:wandstone>);

# =========================================== #
# Skilled
# =========================================== #
# Accessible in iron_age

for item in loadedMods["architecturecraft"].items {
    addItemStage(stages.skilled_architect, item);
}

addItemStage(stages.skilled_architect, <chiselsandbits:chisel_iron>);
addItemStage(stages.skilled_architect, <chiselsandbits:chisel_iron>);
addItemStage(stages.skilled_architect, <betterbuilderswands:wandiron>);

# =========================================== #
# Master
# =========================================== #
# Accessible after iron_age

addItemStage(stages.master_architect, <architect:sketch>.withTag({}));
addItemStage(stages.master_architect, <architect:blueprint>.withTag({}));
addItemStage(stages.master_architect, <architect:provider_item>.withTag({}));
addItemStage(stages.master_architect, <architect:provider_fluid>.withTag({}));

addItemStage(stages.master_architect, <chiselsandbits:chisel_gold>);
addItemStage(stages.master_architect, <chiselsandbits:chisel_diamond>);
addItemStage(stages.master_architect, <betterbuilderswands:wanddiamond>);
addItemStage(stages.master_architect, <betterbuilderswands:wandunbreakable>);

