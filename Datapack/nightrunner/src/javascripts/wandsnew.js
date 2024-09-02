let NewWandsArray = [];
// Define spell data separately
const HitType = {
    ENTITY: 1,
    BLOCK: 2, // Semi implemented
    NO_HIT: 3, // Not implemented
    ENTITY_AND_BLOCK: 4, // Not implemented
    BLOCK_AND_NO_HIT: 5, // Not implemented
    ALL: 6, // Not implemented
};
const spells = {
    Damage: {
        Name: "Damage",
        SpellDamage: 1,  // This will vary depending on the wand
        HealAmount: 0,
        HitType: HitType.ENTITY,  // Default hit type is entity
    },
    Heal: {
        Name: "Heal",
        SpellDamage: 0,
        HealAmount: 1,
        HitType: HitType.ENTITY,  // Default hit type is entity
    },
    Raycast: {
        Name: "Raycast",
        SpellDamage: 0,
        HealAmount: 0,
        HitType: HitType.ALL,
    },
};
const Custom_attributes = {
    Use: false,
    GiveLiteral: ``,
    RecipeLiteral: ``
}
let wooden_wand = {
    Name: "Wooden Wand",
        Color: "white",
        Folder: "wands",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"4"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
        Cooldown: 8,
        Particle: "minecraft:wax_off",
        CustomModelData: 1121,
        Durability: 1059,
        Namespace: "wooden_wand",
        FunctionName: "wooden",
        ManaCost: 1,
        ConsumeManaOnCast: true,
        Attributes: {
            ...Custom_attributes,
        },
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 4,
        },
        SecondarySpell: {},
        compiledData: ""
};
NewWandsArray.push(wooden_wand);
let stone_wand = {
    Name: "Stone Wand",
    Color: "white",
    Folder: "wands",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"5"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1122,
    Durability: 1131,
    Namespace: "stone_wand",
    FunctionName: "stone",
    ManaCost: 1,
    ConsumeManaOnCast: true,
    Attributes: {
        ...Custom_attributes,
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 5,
    },
    SecondarySpell: {},
    compiledData: ""
};
NewWandsArray.push(stone_wand);
let iron_wand = {
    Name: "Iron Wand",
    Color: "white",
    Folder: "wands",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"6"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1123,
    Durability: 1250,
    Namespace: "iron_wand",
    FunctionName: "iron",
    ManaCost: 1,
    ConsumeManaOnCast: true,
    Attributes: {
        ...Custom_attributes,
    },
    MainSpell: {
        ...spells.Heal,
    },
    SecondarySpell: {},
    compiledData: ""
};
NewWandsArray.push(iron_wand);

for(let i = 0; i < NewWandsArray.length; i++){
    let DataArray = [];
    WandData = NewWandsArray[i];
    // Dir
    DataArray.push(`dir ` + WandData.Namespace + `{\n`);

    // Give function
    DataArray.push(`function give{\n`);
    DataArray.push(`give @s minecraft:warped_fungus_on_a_stick[custom_data={` + WandData.Namespace + `:true,wand:true},item_name='{"text":"` + WandData.Name + `","italic":false,"color":"` + WandData.Color + `"}',lore=[` + WandData.Description + `,'{"text":"Nightrunner","color":"aqua"}'],custom_model_data=` + WandData.CustomModelData + `,max_damage=` + WandData.Durability + `] 1\n`);
    DataArray.push(`}\n`);

    // Damage Spell
    if(WandData.MainSpell.SpellDamage > 0){
        DataArray.push(`function spell_damage{\n`);
        // Apply damage if player has wand in hand
        DataArray.push(`execute if entity @a[limit=1,tag=raycasting,sort=nearest] run block apply_spell_damage{\n`);

        // Check if entity is iron golem
        DataArray.push(`execute if entity @s[type=minecraft:iron_golem] run return run block{\n`);
        DataArray.push(`damage @a[limit=1,tag=raycasting,sort=nearest] 2 minecraft:magic by @s\n`);
        DataArray.push(`playsound minecraft:item.trident.riptide_2 player @a ~ ~ ~ 0.4 0.4\n`);
        DataArray.push(`}\n`);

        // If no mana was used, deal half damage
        DataArray.push(`execute if score $Nightrunner Nightrunner_Weak_Use matches 1 run return run block{\n`);
        let halfDamage = WandData.MainSpell.SpellDamage / 2;
        DataArray.push(`damage @s ` + halfDamage + ` minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]\n`);
        DataArray.push(`playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.1\n`);
        DataArray.push(`effect give @s slowness 1 1 true\n`);
        DataArray.push(`}\n`);

        // Deal damage
        DataArray.push(`damage @s ` + WandData.MainSpell.SpellDamage + ` minecraft:magic by @a[limit=1,tag=raycasting,sort=nearest]\n`);
        DataArray.push(`playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.4 0.4\n`);
        DataArray.push(`effect give @s slowness 1 1 true\n`);

        DataArray.push(`}\n`);
        DataArray.push(`}\n`);
    }

    // Heal Spell
    // TODO: support both hands
    if(WandData.MainSpell.HealAmount > 0){
        DataArray.push(`function spell_heal{\n`);
        DataArray.push(`effect give @s minecraft:instant_health 1 ` + WandData.MainSpell.HealAmount + `\n`);
        DataArray.push(`}\n`);
    }

    // end dir
    DataArray.push(`}`);
    // Compile
    WandData.compiledData = DataArray.join('');
}

module.exports = {
    WandsArray: NewWandsArray,
}