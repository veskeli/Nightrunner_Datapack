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

// Export wand data using the spells
module.exports = {
    // Wands
    wooden_wand: {
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
    },
    stone_wand: {
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
    },
    iron_wand: {
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
            ...spells.Damage,
            SpellDamage: 6,
        },
        SecondarySpell: {},
    },
    golden_wand: {
        Name: "Golden Wand",
        Color: "white",
        Folder: "wands",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"16"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"11"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
        Cooldown: 16,
        Particle: "minecraft:wax_off",
        CustomModelData: 1124,
        Durability: 1032,
        Namespace: "golden_wand",
        FunctionName: "golden",
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
    },
    diamond_wand: {
        Name: "Diamond Wand",
        Color: "white",
        Folder: "wands",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"7"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
        Cooldown: 8,
        Particle: "minecraft:wax_off",
        CustomModelData: 1125,
        Durability: 2561,
        Namespace: "diamond_wand",
        FunctionName: "diamond",
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
    },
    // Staffs
    wooden_staff: {
        Name: "Wooden Staff",
        Color: "white",
        Folder: "staffs",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"1"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"2 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
        Cooldown: 8,
        Particle: "minecraft:wax_on",
        CustomModelData: 1126,
        Durability: 1059,
        Namespace: "wooden_staff",
        FunctionName: "wooden",
        ManaCost: 15,
        ConsumeManaOnCast: false,
        Attributes: {
            ...Custom_attributes,
            Use: true,
            GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
            RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":1,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
        },
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
    stone_staff: {
        Name: "Stone Staff",
        Color: "white",
        Folder: "staffs",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"2"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"3 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
        Cooldown: 8,
        Particle: "minecraft:wax_on",
        CustomModelData: 1127,
        Durability: 1131,
        Namespace: "stone_staff",
        FunctionName: "stone",
        ManaCost: 15,
        ConsumeManaOnCast: false,
        Attributes: {
            ...Custom_attributes,
            Use: true,
            GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
            RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":2,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
        },
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
    iron_staff: {
        Name: "Iron Staff",
        Color: "white",
        Folder: "staffs",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"3"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"4 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
        Cooldown: 8,
        Particle: "minecraft:wax_on",
        CustomModelData: 1128,
        Durability: 1250,
        Namespace: "iron_staff",
        FunctionName: "iron",
        ManaCost: 15,
        ConsumeManaOnCast: false,
        Attributes: {
            ...Custom_attributes,
            Use: true,
            GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
            RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":3,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
        },
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
    golden_staff: {
        Name: "Golden Staff",
        Color: "white",
        Folder: "staffs",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"5"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"3 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
        Cooldown: 16,
        Particle: "minecraft:wax_on",
        CustomModelData: 1129,
        Durability: 1032,
        Namespace: "golden_staff",
        FunctionName: "golden",
        ManaCost: 15,
        ConsumeManaOnCast: false,
        Attributes: {
            ...Custom_attributes,
            Use: true,
            GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
            RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":2,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
        },
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
    diamond_staff: {
        Name: "Diamond Staff",
        Color: "white",
        Folder: "staffs",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"15"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Summon sentry"}]','[{"color":"dark_green","text":"Sentry attack: "},{"color":"dark_aqua","text":"Evoker Fang"}]','[{"color":"dark_green","text":"Evoker fang damage: "},{"color":"dark_aqua","text":"6"}]','[{"color":"dark_green","text":"Concurrent attacks: "},{"color":"dark_aqua","text":"4"}]','""','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":"5 Attack Damage"}','{"color":"dark_green","italic":false,"text":"1.5 Attack Speed"}','""'`,
        Cooldown: 8,
        Particle: "minecraft:wax_on",
        CustomModelData: 11210,
        Durability: 2561,
        Namespace: "diamond_staff",
        FunctionName: "diamond",
        ManaCost: 15,
        ConsumeManaOnCast: false,
        Attributes: {
            ...Custom_attributes,
            Use: true,
            GiveLiteral: `,attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}`,
            RecipeLiteral: `,"attribute_modifiers":{"modifiers":[{"id":"attack_damage","type":"generic.attack_damage","amount":4,"operation":"add_value","slot":"mainhand"},{"id":"attack_speed","type":"generic.attack_speed","amount":-2.5,"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}`
        },
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
};