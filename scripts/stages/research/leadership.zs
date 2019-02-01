#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.leadership;

val npcItems = [
    
    <ancientwarfarenpc:bard_instrument>,
    <ancientwarfarenpc:bard_instrument:1>,
    <ancientwarfarenpc:bard_instrument:2>,
    <ancientwarfarenpc:bard_instrument:3>,
    <ancientwarfarenpc:combat_order>,
    <ancientwarfarenpc:diamond_command_baton>,
    <ancientwarfarenpc:diamond_shield>,
    <ancientwarfarenpc:gold_command_baton>,
    <ancientwarfarenpc:gold_shield>,
    <ancientwarfarenpc:iron_command_baton>,
    <ancientwarfarenpc:iron_shield>,
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "trader"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "priest"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "commander", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "soldier", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "archer", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "medic", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "engineer", npcType: "combat"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "siege_engineer"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "researcher", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "craftsman", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "farmer", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "lumberjack", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "miner", npcType: "worker"}),
    <ancientwarfarenpc:npc_spawner>.withTag({npcSubtype: "", npcType: "bard"}),
    <ancientwarfarenpc:routing_order>,
    <ancientwarfarenpc:stone_command_baton>,
    <ancientwarfarenpc:stone_shield>,
    <ancientwarfarenpc:trade_order>,
    <ancientwarfarenpc:upkeep_order>,
    <ancientwarfarenpc:wooden_command_baton>,
    <ancientwarfarenpc:wooden_shield>,
    <ancientwarfarenpc:work_order>

] as IItemStack[];

for item in npcItems {
    mods.ItemStages.addItemStage(stage, item);
}