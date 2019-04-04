#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var stage = stages.leadership;

val npcItems = [
    
    <ancientwarfarenpc:bard_instrument>,
    <ancientwarfarenpc:bard_instrument:1>,
    <ancientwarfarenpc:bard_instrument:2>,
    <ancientwarfarenpc:bard_instrument:3>,
    <ancientwarfarenpc:combat_order>,
    <ancientwarfarenpc:diamond_command_baton>,
    <ancientwarfarenpc:gold_command_baton>,
    <ancientwarfarenpc:iron_command_baton>,
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "trader"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "priest"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "commander", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "soldier", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "archer", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "medic", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "researcher", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "craftsman", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "farmer", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "lumberjack", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "miner", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bard"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "courier"}),
    <ancientwarfarenpc:routing_order>,
    <ancientwarfarenpc:stone_command_baton>,
    <ancientwarfarenpc:trade_order>,
    <ancientwarfarenpc:upkeep_order>,
    <ancientwarfarenpc:wooden_command_baton>,
    <ancientwarfarenpc:work_order>

] as IItemStack[];

for item in npcItems {
    mods.ItemStages.addItemStage(stage, item);
}

mods.recipestages.Recipes.addShapeless(
    "ancientwarfarenpc_npc_spawner_archer_combat_custom", stage, 
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "archer", npcType: "combat"}), 
    [materials.copper.ingot, <tconstruct:shortbow>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Special: {Categories: ["tool", "launcher"]}, TinkerData: {Materials: ["wood", "wood", "string"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]}).onlyWithTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Special: {Categories: ["tool", "launcher"]}, TinkerData: {Materials: ["wood", "wood", "string"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]})|<tconstruct:longbow>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 70, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.0 as float, Durability: 70, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Special: {Categories: ["tool", "launcher"]}, TinkerData: {Materials: ["wood", "wood", "wood", "string"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]}),
    materials.copper.ingot, <ore:foodBundle>]);

mods.recipestages.Recipes.addShapeless(
    "ancientwarfarenpc_npc_spawner_farmer_worker_custom", stage, 
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "farmer", npcType: "worker"}), 
    [materials.copper.ingot, <tconstruct:mattock>.withTag({}),
    materials.copper.ingot, <ore:foodBundle>]);

mods.recipestages.Recipes.addShapeless(
    "ancientwarfarenpc_npc_spawner_worker_custom", stage,
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "worker"}), 
    [materials.copper.ingot,<ore:foodBundle>,
    materials.copper.ingot,<tconstruct:pickaxe>.withTag({})]);

mods.recipestages.Recipes.addShapeless(
    "ancientwarfarenpc_npc_spawner_combat_custom", stage,
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "combat"}), 
    [materials.copper.ingot,<ore:foodBundle>,
    materials.copper.ingot,<tconstruct:broadsword>.withTag({})]);

mods.recipestages.Recipes.addShaped(
    "ancientwarfarenpc_town_hall_custom", stage, 
    <ancientwarfarenpc:town_hall>, 
    [[<ore:bricksStone>, materials.copper.block, <ore:bricksStone>], 
    [<ore:logWood>, <ore:chest>, <ore:logWood>], 
    [<ore:bricksStone>, <ore:logWood>, <ore:bricksStone>]]);

mods.recipestages.Recipes.addShapedMirrored("ancientwarfarenpc_wooden_command_baton_custom", 
    <ancientwarfarenpc:wooden_command_baton>, 
    [[null, null, <ore:plankWood>],
    [null, stick, null], 
    [<ore:plankWood>, null, null]]);

mods.recipestages.Recipes.addShapedMirrored("ancientwarfarenpc_stone_command_baton_custom", 
    <ancientwarfarenpc:stone_command_baton>, 
    [[null, null, <minecraft:stone:*>], 
    [null, stick, null], 
    [<minecraft:stone:*>, null, null]]);

val craftableNPCs as IIngredient[] = [

    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "priest"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bard"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "trader"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "courier"}),

];

for npc in craftableNPCs {
    recipes.replaceAllOccurences(<ore:ingotGold>, materials.copper.ingot, npc);
}
