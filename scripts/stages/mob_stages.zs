#priority 100
#modloaded mobstages
var entitiesForStage as string[][string] = {
    stages.stone_age_mobs : [
        "minecraft:cave_spider",
        "minecraft:evocation_illager",
        "minecraft:giant",
        "minecraft:husk",
        "minecraft:creeper",
        "minecraft:illusion_illager",
        "minecraft:silverfish",
        "minecraft:skeleton",
        "minecraft:slime",
        "minecraft:spider",
        "minecraft:stray",
        "minecraft:vex",
        "minecraft:vindication_illager",
        "minecraft:zombie",
        "minecraft:zombie_villager",
    ],
    stages.copper_age_mobs : [
        "minecraft:witch",
    ],
    stages.bronze_age_mobs : [
        "minecraft:zombie_pigman",
        "minecraft:blaze",
        "minecraft:ghast",
        "minecraft:magma_cube",
        "minecraft:wither",
        "minecraft:wither_skeleton"
    ],
    stages.iron_age_mobs : [
        "minecraft:elder_guardian",
        "minecraft:guardian"
    ],
    stages.middle_ages_mobs : [
        "minecraft:shulker",
        "minecraft:ender_dragon",
        "minecraft:enderman",
        "minecraft:endermite"
    ]
};

for stage, entities in entitiesForStage {
	for entity in entities {
        mods.MobStages.addStage(stage, entity);	
    }
}