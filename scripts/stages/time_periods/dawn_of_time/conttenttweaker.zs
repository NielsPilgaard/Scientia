#priority 100
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;

var stage = stages.dawn_of_time;

Recipes.addShapeless("contenttweaker_research_toolparts_custom", stage,  
<contenttweaker:research_tool_parts>, 
[<ore:fiber>,<ore:bone>,stick,<ore:logWood>]);
addItemStage(stage, <contenttweaker:research_tool_parts>);

Recipes.addShapedMirrored("contenttweaker_blank_pattern_frame_custom", stage, 
<contenttweaker:blank_pattern_frame>, 
[[stick, stick],
[stick, stick]]);
addItemStage(stage, <contenttweaker:blank_pattern_frame>);

Recipes.addShapedMirrored("contenttweaker_woven_fiber_custom", stage, 
<contenttweaker:woven_fiber> * 2, 
[[<ore:fiber>, <ore:fiber>],
[<ore:fiber>, <ore:fiber>]]);
addItemStage(stage, <contenttweaker:woven_fiber>);