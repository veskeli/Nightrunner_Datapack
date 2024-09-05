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
//=================================================
// MARK: Spells
//=================================================
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
    SummonSentry: {
        Name: "Summon Sentry",
        SpellDamage: 0,
        HealAmount: 0,
        HitType: HitType.BLOCK,
    },
};
//=================================================
// MARK: Custom attributes
//=================================================
const Custom_attributes = {
    Use: false,
    GiveLiteral: ``,
    RecipeLiteral: ``
}
//=================================================
// MARK: Sentries
//=================================================
let DefaultSentryCost = 15;
const Sentries = {
    null_sentry: {
        Namespace: "Null",
        Lifetime: 0,
        Target: "player",
        Distance: 0,
        DustColor: "0.0,0.0,0.0",
        DisplayBlock: "minecraft:air",
        ConcurrentAttacks: 0,
        ManaCost: 0,
    },
    damage_sentry:{
        Namespace: "Damage",
        Lifetime: 15,
        Target: "#nightrunner:enemy",
        Distance: 6,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 3,
        ManaCost: DefaultSentryCost,
    },
    heal_sentry:{
        Namespace: "Heal",
        Lifetime: 5,
        Target: "player",
        Distance: 6,
        DustColor: "0.0,1.0,0.0",
        DisplayBlock: "minecraft:beacon",
        ConcurrentAttacks: 3,
        ManaCost: 15,
    },
    wooden_sentry:{
        Namespace: "Wooden",
        Lifetime: 13,
        Target: "#nightrunner:enemy",
        Distance: 3,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 1,
        ManaCost: DefaultSentryCost,
    },
    stone_sentry:{
        Namespace: "Stone",
        Lifetime: 14,
        Target: "#nightrunner:enemy",
        Distance: 3,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 2,
        ManaCost: DefaultSentryCost,
    },
    iron_sentry:{
        Namespace: "Iron",
        Lifetime: 16,
        Target: "#nightrunner:enemy",
        Distance: 5,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 3,
        ManaCost: DefaultSentryCost,
    },
    golden_sentry:{
        Namespace: "Golden",
        Lifetime: 15,
        Target: "#nightrunner:enemy",
        Distance: 3,
        DustColor: "0.973,1.000,0.212",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 5,
        ManaCost: DefaultSentryCost,
    },
    diamond_sentry:{
        Namespace: "Diamond",
        Lifetime: 18,
        Target: "#nightrunner:enemy",
        Distance: 5,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 4,
        ManaCost: DefaultSentryCost,
    }
};
//=================================================
// MARK: Wands
//=================================================
let wooden_wand = {
    Name: "Wooden Wand",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"4"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1121,
    Durability: 1059,
    Namespace: "wooden_wand",
    RecipePattern: [ " i", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        }
    },
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
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
NewWandsArray.push(wooden_wand);
let stone_wand = {
    Name: "Stone Wand",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"5"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1122,
    Durability: 1131,
    Namespace: "stone_wand",
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:cobblestone"
        }
    },
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
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
NewWandsArray.push(stone_wand);
let iron_wand = {
    Name: "Iron Wand",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"6"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1123,
    Durability: 1250,
    Namespace: "iron_wand",
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:iron_ingot"
        }
    },
    ManaCost: 1,
    ConsumeManaOnCast: true,
    Attributes: {
        ...Custom_attributes,
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 6,
    },
    SecondarySpell: {},
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
NewWandsArray.push(iron_wand);
let golden_wand = {
    Name: "Golden Wand",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"16"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"11"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 16,
    Particle: "minecraft:wax_off",
    CustomModelData: 1124,
    Durability: 1032,
    Namespace: "golden_wand",
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:gold_ingot"
        }
    },
    ManaCost: 2,
    ConsumeManaOnCast: true,
    Attributes: {
        ...Custom_attributes,
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 11,
    },
    SecondarySpell: {},
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
NewWandsArray.push(golden_wand);
let diamond_wand = {
    Name: "Diamond Wand",
    Color: "white",
    Folder: "wands",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"7"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1125,
    Durability: 2561,
    Namespace: "diamond_wand",
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:diamond"
        }
    },
    ManaCost: 1,
    ConsumeManaOnCast: true,
    Attributes: {
        ...Custom_attributes,
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 7,
    },
    SecondarySpell: {},
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
NewWandsArray.push(diamond_wand);
//=================================================
// MARK: Staffs
//=================================================
let wooden_staff = {
    Name: "Wooden Staff",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"1"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"2 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
    Cooldown: 8,
    Particle: "minecraft:wax_on",
    CustomModelData: 1126,
    Durability: 1059,
    Namespace: "wooden_staff",
    RecipePattern: ["  i", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        }
    },
    ManaCost: 15,
    ConsumeManaOnCast: false,
    Attributes: {
        ...Custom_attributes,
        Use: true,
        GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
        RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":1,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
    },
    MainSpell: {
        ...spells.SummonSentry,
    },
    SecondarySpell: {
        ...spells.SummonSentry,
    },
    Sentry: Sentries.wooden_sentry,
    compiledData: ""
};
NewWandsArray.push(wooden_staff);

let stone_staff = {
    Name: "Stone Staff",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"2"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"3 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
    Cooldown: 8,
    Particle: "minecraft:wax_on",
    CustomModelData: 1127,
    Durability: 1131,
    Namespace: "stone_staff",
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:cobblestone"
        }
    },
    ManaCost: 15,
    ConsumeManaOnCast: false,
    Attributes: {
        ...Custom_attributes,
        Use: true,
        GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
        RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":2,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
    },
    MainSpell: {
        ...spells.SummonSentry,
    },
    SecondarySpell: {
        ...spells.SummonSentry,
    },
    Sentry: Sentries.stone_sentry,
    compiledData: ""
};
NewWandsArray.push(stone_staff);
let iron_staff = {
    Name: "Iron Staff",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"3"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"4 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
    Cooldown: 8,
    Particle: "minecraft:wax_on",
    CustomModelData: 1128,
    Durability: 1250,
    Namespace: "iron_staff",
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:iron_ingot"
        }
    },
    ManaCost: 15,
    ConsumeManaOnCast: false,
    Attributes: {
        ...Custom_attributes,
        Use: true,
        GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
        RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":3,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
    },
    MainSpell: {
        ...spells.SummonSentry,
    },
    SecondarySpell: {
        ...spells.SummonSentry,
    },
    Sentry: Sentries.iron_sentry,
    compiledData: ""
};
NewWandsArray.push(iron_staff);

let golden_staff = {
    Name: "Golden Staff",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"5"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"3 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
    Cooldown: 16,
    Particle: "minecraft:wax_on",
    CustomModelData: 1129,
    Durability: 1032,
    Namespace: "golden_staff",
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:gold_ingot"
        }
    },
    ManaCost: 15,
    ConsumeManaOnCast: false,
    Attributes: {
        ...Custom_attributes,
        Use: true,
        GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
        RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":2,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
    },
    MainSpell: {
        ...spells.SummonSentry,
    },
    SecondarySpell: {
        ...spells.SummonSentry,
    },
    Sentry: Sentries.golden_sentry,
    compiledData: ""
};
NewWandsArray.push(golden_staff);

let diamond_staff = {
    Name: "Diamond Staff",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"4"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"5 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
    Cooldown: 8,
    Particle: "minecraft:wax_on",
    CustomModelData: 11210,
    Durability: 2561,
    Namespace: "diamond_staff",
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:diamond"
        }
    },
    ManaCost: 15,
    ConsumeManaOnCast: false,
    Attributes: {
        ...Custom_attributes,
        Use: true,
        GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
        RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":4,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
    },
    MainSpell: {
        ...spells.SummonSentry,
    },
    SecondarySpell: {
        ...spells.SummonSentry,
    },
    Sentry: Sentries.diamond_sentry,
    compiledData: ""
};
NewWandsArray.push(diamond_staff);

module.exports = { NewWandsArray, HitType, spells, Custom_attributes };