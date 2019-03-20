#priority 10000

global stages as string[string] = {

# Time Period
	dawn_of_time : "dawn_of_time",
	stone_age : "stone_age", # Able to mine Copper / Aluminum / Coal
	copper_age : "copper_age", # Able to mine Tin / Lead / Silver
	bronze_age : "bronze_age", # Able to mine Redstone / Lapis
	iron_age : "iron_age", # Able to mine Nickel / Iron / Gold
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
	defender : "defender", # Unlocks Shields
	locomotion : "locomotion", # Unlocks Rails, Minecarts etc, Railcraft?
	explosives : "explosives", # Unlocks gunpowder, TNT, EFLN
	maestro : "maestro", # Unlocks Music Discs and tools to play them
	ninja : "ninja", # Unlocks the TiC Shuriken and Grappling Hooks
	dye : "dye", # Gives access to the Inspirations dyes
	bounty : "bounty", # Gives access to the Bounty Board in Villages
	metallurgy : "metallurgy", # Gives access to the High Oven
	
# Profession Research 
	novice_tinkerer : "novice_tinkerer", # Gives access to the Tool Table
	apprentice_tinkerer : "apprentice_tinkerer", # Gives access to weapons and shortbows
	skilled_tinkerer : "skilled_tinkerer", # Gives access to armor and modifiers
	expert_tinkerer : "expert_tinkerer", # Gives access to the Tool Forge
	master_tinkerer : "master_tinkerer", #  Gives access to part replacing, luck, silktouch, excavation & reinforced modifiers

	novice_carpenter : "novice_carpenter", # Planks in Artisan Worktable, Bibliocraft Shelves, Barrels, Cabinets
	skilled_carpenter : "skilled_carpenter", # Better plank recipe, all furniture, chests
	master_carpenter : "master_carpenter", # Best plank recipe, ArchitectureCraft, beds
	
	novice_miner : "novice_miner", # Copper/Coal/Aluminum Ore
	apprentice_miner : "apprentice_miner", # Tin/Silver/Lead Ore (Redstone/Lapis in Bronze_Age)
	skilled_miner : "skilled_miner", # Iron/Gold/Nickel Ore
	expert_miner : "expert_miner", # Diamond?
	master_miner : "master_miner", # Obsidian?

	novice_druid : "novice_druid", # The Botania / Nature's Aura profession, gives access to the recipe for Waystone and Warp Stone
	skilled_druid : "skilled_druid", 
	master_druid : "master_druid",

	novice_warlock : "novice_warlock", # The Blood Magic profession, gives access to Floocraft teleportation
	#apprentice_warlock : "apprentice_warlock",
	skilled_warlock : "skilled_warlock",
	#expert_warlock : "expert_warlock",  
	master_warlock : "master_warlock",
	
	novice_chef : "novice_chef",
	#apprentice_chef : "apprentice_chef",
	skilled_chef : "skilled_chef",
	#expert_chef : "expert_chef",  
	master_chef : "master_chef"

# Disabling
	//disabled : "disabled" # A stage designed to disable items, hiding them and making them inaccessible
};