for material in materials {
    if (!isNull(materials[material].ore_deposit)) {
        print(materials[material].ore_deposit.items[0].name);
    }
}