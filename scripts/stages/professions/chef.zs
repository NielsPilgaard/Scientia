#priority 100
import crafttweaker.item.IItemStack;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

# =========================================== #
# Novice
# =========================================== #

var stage = stages.novice_chef;

val noviceItems as IItemStack[] = [

    <harvestcraft:applesauceitem>,
    <harvestcraft:raisinsitem>,
    <harvestcraft:roastedpumpkinseedsitem>,
    <harvestcraft:applejuiceitem>,
    <harvestcraft:melonjuiceitem>,
    <harvestcraft:carrotjuiceitem>,
    <harvestcraft:strawberryjuiceitem>,
    <harvestcraft:blueberryjuiceitem>,
    <harvestcraft:blackberryjuiceitem>,
    <harvestcraft:raspberryjuiceitem>,
    <harvestcraft:pumpkinsoupitem>,
    <harvestcraft:melonsmoothieitem>,
    <harvestcraft:carrotsoupitem>,
    <harvestcraft:potatosoupitem>,
    <harvestcraft:bakedhamitem>,
    <harvestcraft:friedeggitem>,
    <harvestcraft:scrambledeggitem>,
    <harvestcraft:boiledeggitem>,
    <harvestcraft:spidereyesoupitem>,
    <harvestcraft:zombiejerkyitem>,
    <harvestcraft:cocoapowderitem>,
    <harvestcraft:stockitem>,
    <harvestcraft:fruitsaladitem>,
    <harvestcraft:tomatosoupitem>,
    <harvestcraft:fishlettucewrapitem>,
    <harvestcraft:strawberrysmoothieitem>,
    <harvestcraft:bakedbeansitem>,
    <harvestcraft:lemonaideitem>,
    <harvestcraft:lemonsmoothieitem>,
    <harvestcraft:blueberrysmoothieitem>,
    <harvestcraft:beetsoupitem>,
    <harvestcraft:roastedrootveggiemedleyitem>,
    <harvestcraft:cactussoupitem>,
    <harvestcraft:seedsoupitem>,
    <harvestcraft:blackberrysmoothieitem>,
    <harvestcraft:chocolatemilkitem>,
    <harvestcraft:raspberrysmoothieitem>,
    <harvestcraft:fruitpunchitem>,
    <harvestcraft:applejellyitem>,
    <harvestcraft:blackberryjellyitem>,
    <harvestcraft:blueberryjellyitem>,
    <harvestcraft:lemonjellyitem>,
    <harvestcraft:raspberryjellyitem>,
    <harvestcraft:strawberryjellyitem>,
    <harvestcraft:watermelonjellyitem>,
    <harvestcraft:beefjerkyitem>,
    <harvestcraft:lambkebabitem>,
    <harvestcraft:applecideritem>,
    <harvestcraft:chorizoitem>,
    <harvestcraft:pepperoniitem>,
    <harvestcraft:strawberrymilkshakeitem>,
    <harvestcraft:chocolatemilkshakeitem>,
    <harvestcraft:veggiestripsitem>,
    <harvestcraft:applesmoothieitem>,
    <harvestcraft:baconandeggsitem>,
    <harvestcraft:oystersauceitem>,
    <harvestcraft:steaktartareitem>,
    <harvestcraft:onionsoupitem>,
    <harvestcraft:cuttingboarditem>,
    <harvestcraft:potitem>,
    <harvestcraft:skilletitem>,
    <harvestcraft:bakewareitem>,
    <harvestcraft:saucepanitem>,
    <harvestcraft:juiceritem>

];

for item in noviceItems {
    stageItem(stage, item);
}

mods.recipestages.Recipes.addShapeless("harvestcraft_almondbutteritem_custom", stage, 
<harvestcraft:almondbutteritem>, [<ore:toolJuicer>,<ore:cropAlmond>]);

mods.recipestages.Recipes.addShapedMirrored("artisanworktables_worktable_11_custom", stage, 
<artisanworktables:worktable:11>, 
[[<minecraft:stone_slab>, <ore:pressurePlateWood>, <minecraft:stone_slab>],
[<ore:workbench>, <ore:logWood>, <ore:workbench>], 
[<ore:logWood>, null, <ore:logWood>]]);



# =========================================== #
# Skilled
# =========================================== #

stage = stages.skilled_chef;

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>])
  .addTool(<ore:toolPot>, 0)
  .addOutput(<harvestcraft:butteritem>)
  .addRequirement(GameStages.anyOf([stages.novice_chef, stages.skilled_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>])
  .addTool(<ore:toolSifter>, 5)
  .addOutput(<harvestcraft:cheeseitem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef]))
  .create();

# =========================================== #
# Master
# =========================================== #

stage = stages.master_chef;

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>])
  .addTool(<ore:toolPot>, 0)
  .addOutput(<harvestcraft:butteritem>)
  .addRequirement(GameStages.anyOf([stages.novice_chef, stages.skilled_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>])
  .addTool(<ore:toolSifter>, 10)
  .addOutput(<harvestcraft:cheeseitem> * 5)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef]))
  .create();