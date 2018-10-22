#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.leadership;

val npcItems = [

    <ancientwarfarenpc:bard_instrument:0>,
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
    <ancientwarfarenpc:npc_spawner>.withTag({}),
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