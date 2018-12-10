#priority 100

var entitiesForStage as string[][string] = {
    stages.dawn_of_time_mobs : [
        "minecraft:skeleton"
    ],
    stages.stone_age_mobs : [
        "minecraft:zombie"
    ],
    stages.copper_age_mobs : [
        "minecraft:slime"
    ],
    stages.bronze_age_mobs : [
        "minecraft:horse"
    ],
    stages.iron_age_mobs : [
        "minecraft:cow"
    ],
    stages.dark_age_mobs : [
        "minecraft:sheep"
    ]
};

for stage, entities in entitiesForStage {
	for entity in entities {
        mods.MobStages.addStage(stage, entity);	
    }
}