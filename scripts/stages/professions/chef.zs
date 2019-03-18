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
    <harvestcraft:steaktartareitem>,
    <harvestcraft:onionsoupitem>,
    <harvestcraft:cuttingboarditem>,
    <harvestcraft:potitem>,
    <harvestcraft:skilletitem>,
    <harvestcraft:bakewareitem>,
    <harvestcraft:saucepanitem>,
    <harvestcraft:juiceritem>,
    <harvestcraft:grilledeggplantitem>,
    <harvestcraft:grilledmushroomitem>,
    <minecraft:mushroom_stew>,
    <minecraft:cookie>,
    <minecraft:rabbit_stew>

];

for item in noviceItems {
    stageItem(stage, item);
}

mods.recipestages.Recipes.addShapedMirrored("artisanworktables_worktable_11_custom", stage, 
<artisanworktables:worktable:11>, 
[[<minecraft:stone_slab>, <ore:pressurePlateWood>, <minecraft:stone_slab>],
[<ore:workbench>, <ore:logWood>, <ore:workbench>], 
[<ore:logWood>, null, <ore:logWood>]]);



# =========================================== #
# Skilled
# =========================================== #

stage = stages.skilled_chef;
  
val skilledItems as IItemStack[] = [

    <harvestcraft:carrotcakeitem>,
    <harvestcraft:chocolatesprinklecakeitem>,
    <harvestcraft:toastitem>,
    <harvestcraft:cheeseitem>,
    <harvestcraft:pumpkinbreaditem>,
    <harvestcraft:applepieitem>,
    <harvestcraft:flouritem>,
    <harvestcraft:doughitem>,
    <harvestcraft:butteritem>,
    <harvestcraft:potatosaladitem>,
    <harvestcraft:friesitem>,
    <harvestcraft:stuffedmushroomitem>,
    <harvestcraft:chickenpotpieitem>,
    <harvestcraft:hamburgeritem>,
    <harvestcraft:potroastitem>,
    <harvestcraft:fishsandwichitem>,
    <harvestcraft:mayoitem>,
    <harvestcraft:eggsaladitem>,
    <harvestcraft:ketchupitem>,
    <harvestcraft:chickenparmasanitem>,
    <harvestcraft:leafyfishsandwichitem>,
    <harvestcraft:potatocakesitem>,
    <harvestcraft:hashitem>,
    <harvestcraft:braisedonionsitem>,
    <harvestcraft:strawberrypieitem>,
    <harvestcraft:vinegaritem>,
    <harvestcraft:lemonchickenitem>,
    <harvestcraft:blueberrypieitem>,
    <harvestcraft:stuffedeggplantitem>,
    <harvestcraft:gingersnapsitem>,
    <harvestcraft:garlicbreaditem>,
    <harvestcraft:garlicchickenitem>,
    <harvestcraft:biscuititem>,
    <harvestcraft:raspberrypieitem>,
    <harvestcraft:oliveoilitem>,
    <harvestcraft:meatystewitem>,
    <harvestcraft:saladdressingitem>,
    <harvestcraft:applejellysandwichitem>,
    <harvestcraft:blackberryjellysandwichitem>,
    <harvestcraft:blueberryjellysandwichitem>,
    <harvestcraft:lemonjellysandwichitem>,
    <harvestcraft:raspberryjellysandwichitem>,
    <harvestcraft:strawberryjellysandwichitem>,
    <harvestcraft:watermelonjellysandwichitem>,
    <harvestcraft:toastsandwichitem>,
    <harvestcraft:potatoandcheesepirogiitem>,
    <harvestcraft:friedonionsitem>,
    <harvestcraft:almondbutteritem>,
    <harvestcraft:naanitem>,
    <harvestcraft:cheeseontoastitem>,
    <harvestcraft:applefritteritem>,
    <harvestcraft:greeneggsandhamitem>,
    <harvestcraft:hamandcheesesandwichitem>,
    <harvestcraft:surfandturfitem>,
    <harvestcraft:spidereyepieitem>,
    <harvestcraft:mushroomsteakitem>,
    <harvestcraft:slimepieitem>,
    <harvestcraft:stuffedchilipeppersitem>,
    <harvestcraft:shrimpcocktailitem>,
    <harvestcraft:blackberrycobbleritem>,
    <minecraft:cake>,
    <minecraft:bread>

];

for item in skilledItems {
  stageItem(stage, item);
}

mods.recipestages.Recipes.addShapeless("harvestcraft:toastitem_2_custom", 
<harvestcraft:toastitem> * 2, 
[<ore:toolBakeware>,<ore:foodBread>,<ore:foodButter>,<ore:dustSalt>]);

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>, <ore:dustSalt>])
  .addTool(<ore:artisansMortar>, 8)
  .addOutput(<harvestcraft:butteritem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>, <ore:dustSalt>])
  .addTool(<ore:toolSifter>, 8)
  .addOutput(<harvestcraft:cheeseitem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:dustSalt>])
  .setFluid(<liquid:milk> * 500)
  .addTool(<ore:artisansMortar>, 8)
  .addOutput(<harvestcraft:butteritem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:dustSalt>])
  .setFluid(<liquid:milk> * 500)
  .addTool(<ore:toolSifter>, 8)
  .addOutput(<harvestcraft:cheeseitem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:cropAlmond>, <ore:dustSalt>])
  .addTool(<ore:artisansMortar>, 4)
  .addOutput(<harvestcraft:almondbutteritem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllgrain>])
  .addTool(<ore:artisansMortar>, 4)
  .addOutput(<harvestcraft:flouritem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:foodFlour>, <ore:foodFlour>, <ore:dustSalt>, <ore:listAllwater>])
  .addTool(<ore:artisansMortar>, 10)
  .addOutput(<harvestcraft:doughitem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:foodFlour>, <ore:foodFlour>, <ore:dustSalt>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansMortar>, 10)
  .addOutput(<harvestcraft:doughitem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stage]).exclude([stages.master_chef]))
  .create();

# =========================================== #
# Master
# =========================================== #

stage = stages.master_chef;

val masterItems as IItemStack[] = [

    <harvestcraft:grilledcheeseitem>,
    <harvestcraft:cheeseburgeritem>,
    <harvestcraft:bltitem>,
    <harvestcraft:onionhamburgeritem>,
    <harvestcraft:bbqpulledporkitem>,
    <harvestcraft:meatloafitem>,
    <harvestcraft:cheesyshrimpquinoaitem>,
    <harvestcraft:eggtartitem>,
    <harvestcraft:tiropitaitem>,
    <harvestcraft:bibimbapitem>,
    <harvestcraft:groundbeefitem>,
    <harvestcraft:groundchickenitem>,
    <harvestcraft:groundduckitem>,
    <harvestcraft:groundfishitem>,
    <harvestcraft:groundmuttonitem>,
    <harvestcraft:groundporkitem>,
    <harvestcraft:groundrabbititem>,
    <harvestcraft:groundturkeyitem>,
    <harvestcraft:groundvenisonitem>,
    <harvestcraft:baconcheeseburgeritem>,
    <harvestcraft:deluxecheeseburgeritem>,
    <harvestcraft:beansontoastitem>,
    <harvestcraft:meatpieitem>,
    <harvestcraft:clamchowderitem>,
    <harvestcraft:cheesesteakitem>,
    <harvestcraft:baconmushroomburgeritem>,
    <harvestcraft:meatloafsandwichitem>,
    <harvestcraft:delightedmealitem>,
    <harvestcraft:salisburysteakitem>,
    <harvestcraft:grinder>,
    <minecraft:pumpkin_pie>

];

for item in masterItems {
  stageItem(stage, item);
}

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>, <ore:dustSalt>])
  .addTool(<ore:artisansMortar>, 16)
  .addOutput(<harvestcraft:butteritem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllmilk>, <ore:dustSalt>])
  .addTool(<ore:toolSifter>, 16)
  .addOutput(<harvestcraft:cheeseitem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:dustSalt>])
  .setFluid(<liquid:milk> * 500)
  .addTool(<ore:artisansMortar>, 16)
  .addOutput(<harvestcraft:butteritem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:dustSalt>])
  .setFluid(<liquid:milk> * 500)
  .addTool(<ore:toolSifter>, 16)
  .addOutput(<harvestcraft:cheeseitem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:cropAlmond>, <ore:dustSalt>])
  .addTool(<ore:artisansMortar>, 8)
  .addOutput(<harvestcraft:almondbutteritem> * 2)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:listAllgrain>])
  .addTool(<ore:artisansMortar>, 8)
  .addOutput(<harvestcraft:flouritem> * 4)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:foodFlour>, <ore:foodFlour>, <ore:dustSalt>, <ore:listAllwater>])
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(<harvestcraft:doughitem> * 8)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();

RecipeBuilder.get("chef")  
  .setShapeless([<ore:foodFlour>, <ore:foodFlour>, <ore:dustSalt>])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(<harvestcraft:doughitem> * 8)
  .addRequirement(GameStages.allOf([stages.novice_chef, stages.skilled_chef, stage]))
  .create();