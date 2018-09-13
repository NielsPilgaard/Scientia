#priority 100
import scripts.utility.stageIItemstack;

# =========================================== #
# Novice
# =========================================== #

stageIItemstack(stages.novice_architect, <betterbuilderswands:wandstone>);

# =========================================== #
# Skilled
# =========================================== #
# Accessible in iron_age

for item in loadedMods["architecturecraft"].items {
    stageIItemstack(stages.skilled_architect, item);
}

stageIItemstack(stages.skilled_architect, <chiselsandbits:chisel_iron>);
stageIItemstack(stages.skilled_architect, <chiselsandbits:chisel_iron>);
stageIItemstack(stages.skilled_architect, <betterbuilderswands:wandiron>);

# =========================================== #
# Master
# =========================================== #
# Accessible after iron_age

for item in loadedMods["architect"].items {
    stageIItemstack(stages.master_architect, item);
}

stageIItemstack(stages.master_architect, <chiselsandbits:chisel_gold>);
stageIItemstack(stages.master_architect, <chiselsandbits:chisel_diamond>);
stageIItemstack(stages.master_architect, <betterbuilderswands:wanddiamond>);
stageIItemstack(stages.master_architect, <betterbuilderswands:wandunbreakable>);

