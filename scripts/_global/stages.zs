#priority 10000

global stages as string[string] = {

# Time Period
	dawn_of_time : "dawn_of_time",
	stone_age : "stone_age",
	copper_age : "copper_age",
	bronze_age : "bronze_age",
	iron_age : "iron_age",
	middle_ages : "middle_ages",
	industrial_age : "industrial_age",

# Time Period Enemies
	dawn_of_time_mobs : "dawn_of_time_mobs",
	stone_age_mobs : "stone_age_mobs",
	copper_age_mobs : "copper_age_mobs",
	bronze_age_mobs : "bronze_age_mobs",
	iron_age_mobs : "iron_age_mobs",
	middle_ages_mobs : "middle_ages_mobs",
	industrial_age_mobs : "industrial_age_mobs",

# Research
	sifting : "sifting", # Gives access to the Water Filter and Grass Mesh for Flint
	advanced_sifting : "advanced_sifting", # Gives access to Water Strainers
	cartography : "cartography", # Gives access to Journeymap
	biome_compass : "biome_compass", # Gives access to Nature's Compass
	agriculture : "agriculture", # Gives access to hoes (Mattocks)
	brewing : "brewing", # Gives access to potions and Brewing Stands
	masonry : "masonry", # Gives access to basic stone building blocks
	botanical_masonry : "botanical_masonry", # Gives access to biome stones and blocks of coloured quartz
	glassblowing : "glassblowing", # Gives access to glass
	tool_parts : "tool_parts", # Gives access to the Stencil Table and Part Builder
	leadership : "leadership", # Gives access to Ancient Warfare NPCs
	enchanting : "enchanting", # Gives access to the Enchanting Table and Enchanted Books
	fire : "fire", # Gives access to torches and furnaces
	writing : "writing", # Gives access to paper, books and the first research station
	chisel : "chisel", # Unlocks Chisel and Chisels&Bits
	cooking : "cooking", # Unlocks Pam's utensils & machines other than the Water Filter
	defender : "defender", # Unlocks Shields
	locomotion : "locomotion", # Unlocks Rails, Minecarts etc
	explosives : "explosives", # Unlocks gunpowder, TNT, EFLN
	maestro : "maestro", # Unlocks Music Discs and tools to play them
	ninja : "ninja", # Unlocks the TiC Shuriken and Grappling Hooks
	
# Profession Research 
	novice_tinkerer : "novice_tinkerer", # Gives access to the Tool Table
	apprentice_tinkerer : "apprentice_tinkerer", # Gives access to weapons and shortbows
	skilled_tinkerer : "skilled_tinkerer", # Gives access to armor and modifiers
	expert_tinkerer : "expert_tinkerer", # Gives access to the Tool Forge
	master_tinkerer : "master_tinkerer", #  Gives access to part replacing, luck, silktouch, excavation & reinforced modifiers

	novice_architect : "novice_architect", # Gives access to Stone Builder's Wand
	skilled_architect : "skilled_architect", # Gives access to ArchitectureCraft, Iron Builder's Wand
	master_architect : "master_architect", # Gives access to Architect, Diamond/Unbreaking Builder's Wand

	novice_carpenter : "novice_carpenter", # Planks in Artisan Worktable, Bibliocraft Shelves, Barrels, Cabinets
	skilled_carpenter : "skilled_carpenter", # Better plank recipe, all furniture, chests
	master_carpenter : "master_carpenter", # Best plank recipe, ArchitectureCraft
	
	novice_crafter : "novice_crafter", # Tier 1 Artisan Worktable, Crafting Table, String, Wool
	apprentice_crafter : "skilled_crafter", # Tier 2 Artisan Worktable
	skilled_crafter : "skilled_crafter", # Tier 3 Artisan Worktable
	expert_crafter : "skilled_crafter", # Autocrafter
	master_crafter : "master_crafter", # AE Crafting Terminal

	novice_miner : "novice_miner", # Copper Ore
	apprentice_miner : "apprentice_miner", # Tin Ore
	skilled_miner : "skilled_miner", # Iron Ore
	expert_miner : "expert_miner", # Diamond?
	master_miner : "master_miner" # Obsidian?

# Disabling
	//disabled : "disabled" # A stage designed to disable items, hiding them and making them inaccessible
};