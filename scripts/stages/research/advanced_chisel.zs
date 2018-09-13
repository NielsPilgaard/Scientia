#priority 100
import scripts.utility.stageIItemstack;

var stage = stages.advanced_chisel;

for item in loadedMods["chiselsandbits"].items {
    stageIItemstack(stage, item);
}