#priority 1250
#modloaded bibliocraft
import crafttweaker.item.IItemStack;

for i in 0 to 7 {

    <ore:shelfWood>.add(<bibliocraft:shelf>.definition.makeStack(i));

    <ore:potionShelfWood>.add(<bibliocraft:potionshelf>.definition.makeStack(i));

    <ore:bookcaseWood>.add(<bibliocraft:bookcase>.definition.makeStack(i));

    <ore:toolrackWood>.add(<bibliocraft:toolrack>.definition.makeStack(i));

    <ore:clockWood>.add(<bibliocraft:clock>.definition.makeStack(i));

    <ore:mapFrameWood>.add(<bibliocraft:mapframe>.definition.makeStack(i));

    <ore:signWood>.add(<bibliocraft:fancysign>.definition.makeStack(i));

    <ore:labelWood>.add(<bibliocraft:label>.definition.makeStack(i));

    <ore:tableWood>.add(<bibliocraft:table>.definition.makeStack(i));

    <ore:caseWood>.add(<bibliocraft:case>.definition.makeStack(i));

    <ore:deskWood>.add(<bibliocraft:desk>.definition.makeStack(i));

    <ore:furniturePanelerWood>.add(<bibliocraft:furniturepaneler>.definition.makeStack(i));

    <ore:seat>.add(<bibliocraft:seat>.definition.makeStack(i));

    <ore:seatBack>.add(<bibliocraft:seatback1>.definition.makeStack(i));
    <ore:seatBackThin>.add(<bibliocraft:seatback1>.definition.makeStack(i));

    <ore:seatBack>.add(<bibliocraft:seatback2>.definition.makeStack(i));
    <ore:seatBackBoard>.add(<bibliocraft:seatback2>.definition.makeStack(i));

    <ore:seatBack>.add(<bibliocraft:seatback3>.definition.makeStack(i));
    <ore:seatBackHigh>.add(<bibliocraft:seatback3>.definition.makeStack(i));

    <ore:seatBack>.add(<bibliocraft:seatback4>.definition.makeStack(i));
    <ore:seatBackLow>.add(<bibliocraft:seatback4>.definition.makeStack(i));

    <ore:seatBack>.add(<bibliocraft:seatback5>.definition.makeStack(i));
    <ore:seatBackLarge>.add(<bibliocraft:seatback5>.definition.makeStack(i));
}

    <ore:armorStandWood>.add(<minecraft:armor_stand>);

for i in 0 to 16 {
    <ore:lanternGold>.add(<bibliocraft:lampgold>.definition.makeStack(i));
    <ore:lanternIron>.add(<bibliocraft:lampiron>.definition.makeStack(i));
    <ore:lampGold>.add(<bibliocraft:lanterngold>.definition.makeStack(i));
    <ore:lampIron>.add(<bibliocraft:lanterniron>.definition.makeStack(i));

    <ore:advancedLighting>.add(<bibliocraft:lampgold>.definition.makeStack(i));
    <ore:advancedLighting>.add(<bibliocraft:lampiron>.definition.makeStack(i));
    <ore:advancedLighting>.add(<bibliocraft:lanterngold>.definition.makeStack(i));
    <ore:advancedLighting>.add(<bibliocraft:lanterniron>.definition.makeStack(i));
}

var chairs as IItemStack[] = [
    <rustic:chair_oak>,
    <rustic:chair_big_oak>,
    <rustic:chair_birch>,
    <rustic:chair_spruce>,
    <rustic:chair_acacia>,
    <rustic:chair_jungle>,
    <rustic:chair_olive>,
    <rustic:chair_ironwood>,
];

var tables as IItemStack[] = [
    <rustic:table_oak>,
    <rustic:table_big_oak>,
    <rustic:table_birch>,
    <rustic:table_spruce>,
    <rustic:table_acacia>,
    <rustic:table_jungle>,
    <rustic:table_olive>,
    <rustic:table_ironwood>,
];

<ore:chairWood>.addItems(chairs);
<ore:tableWood>.addItems(tables);

<ore:furniture>.addAll(<ore:shelfWood>);
<ore:furniture>.addAll(<ore:potionShelfWood>);
<ore:furniture>.addAll(<ore:bookcaseWood>);
<ore:furniture>.addAll(<ore:toolrackWood>);
<ore:furniture>.addAll(<ore:mapFrameWood>);
<ore:furniture>.addAll(<ore:tableWood>);
<ore:furniture>.addAll(<ore:caseWood>);
<ore:furniture>.addAll(<ore:deskWood>);
<ore:furniture>.addAll(<ore:armorStandWood>);
<ore:furniture>.addAll(<ore:seat>);
<ore:furniture>.addAll(<ore:seatBack>);
<ore:furniture>.addAll(<ore:chairWood>);
<ore:furniture>.addAll(<ore:tableWood>);

<ore:chairWood>.addAll(<ore:seat>);
