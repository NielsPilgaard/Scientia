#priority 100
import scripts.utility.stageIItemstack;

var stage = stages.advanced_sifting;

for item in loadedMods["waterstrainer"].items {
    stageIItemstack(stage, item);
}