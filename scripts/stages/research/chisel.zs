#priority 100
import scripts.utility.stageIItemstack;

var stage = stages.chisel;

for item in loadedMods["chisel"].items {
    stageIItemstack(stage, item);
}