#priority 100

# Doesn't work, what gives?
recipes.replaceAllOccurences(<contenttweaker:dirt_bucket>, <dynamictrees:dirtbucket>);

# Make recipes with Buckets accept the primitive variant
recipes.replaceAllOccurences(<minecraft:bucket>, <minecraft:bucket>|<claybucket:claybucket>);

# Make recipes with Hoppers accept the primitive variant
recipes.replaceAllOccurences(<minecraft:hopper>, <minecraft:hopper>|<tconstruct:wooden_hopper>);

# Enforcing that recipes use chestWood for chests
recipes.replaceAllOccurences(<minecraft:chest>, <ore:chestWood>);
