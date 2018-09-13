//import mods.ltt.LootTable;
#priority 100
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

LootTables.getTable("minecraft:entities/cow").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/wolf").addPool("custom", 1, 1, 1, 2).addItemEntryHelper(<contenttweaker:raw_hide>, 1, 1, [Functions.setCount(0, 3), Functions.lootingEnchantBonus(1, 5, 6)], []);

val leatheryAnimals as string[] = [
	"minecraft:entities/cow",
	"minecraft:entities/donkey",
	"minecraft:entities/horse",
	"minecraft:entities/llama",
	"minecraft:entities/mule",
	"minecraft:entities/pig",
	"minecraft:entities/polar_bear",
	"minecraft:entities/sheep"
];

val tables as string[] = [
	//"astralsorcery:chest_shrine",
	"minecraft:chests/abandoned_mineshaft",
	"minecraft:chests/desert_pyramid",
	"minecraft:chests/end_city_treasure",
	"minecraft:chests/igloo_chest",
	"minecraft:chests/jungle_temple",
	"minecraft:chests/jungle_temple_dispenser",
	"minecraft:chests/nether_bridge",
	"minecraft:chests/simple_dungeon",
	"minecraft:chests/spawn_bonus_chest",
	"minecraft:chests/stronghold_corridor",
	"minecraft:chests/stronghold_crossing",
	"minecraft:chests/stronghold_library",
	"minecraft:chests/village_blacksmith",
	"minecraft:chests/woodland_mansion",
	"minecraft:gameplay/fishing",
	"minecraft:gameplay/fishing/fish"
	];

for table in tables {
	LootTables.getTable(table).clear();
}

for animal in leatheryAnimals {
	LootTables.getTable(animal).getPool("main").addItemEntryHelper(<contenttweaker:raw_hide>, 1, 1, [Functions.setCount(2, 5), Functions.lootingEnchantBonus(1, 6, 8)], []);
}