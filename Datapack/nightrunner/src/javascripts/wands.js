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

// Export wand data using the spells
module.exports = {
    // Wands
    wooden_wand: {
        Name: "Wooden Wand",
        Color: "white",
        Folder: "wands",
        Description: "Damage: 4 | Cooldown: 8",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1121,
        Namespace: "wooden_wand",
        FunctionName: "wooden",
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 4,
        },
        SecondarySpell: {
            ...spells.Damage,
            SpellDamage: 4,
        },
    },
    stone_wand: {
        Name: "Stone Wand",
        Color: "white",
        Folder: "wands",
        Description: "Damage: 5 | Cooldown: 8",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1122,
        Namespace: "stone_wand",
        FunctionName: "stone",
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 5,
        },
        SecondarySpell: {
            ...spells.Damage,
            SpellDamage: 5,
        },
    },
    iron_wand: {
        Name: "Iron Wand",
        Color: "white",
        Folder: "wands",
        Description: "Damage: 6 | Cooldown: 8",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1123,
        Namespace: "iron_wand",
        FunctionName: "iron",
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 6,
        },
        SecondarySpell: {
            ...spells.Damage,
            SpellDamage: 6,
        },
    },
    golden_wand: {
        Name: "Golden Wand",
        Color: "white",
        Folder: "wands",
        Description: "Damage: 11 | Cooldown: 16",
        Cooldown: 16,
        Particle: "minecraft:crit",
        CustomModelData: 1124,
        Namespace: "golden_wand",
        FunctionName: "golden",
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 11,
        },
        SecondarySpell: {
            ...spells.Damage,
            SpellDamage: 11,
        },
    },
    diamond_wand: {
        Name: "Diamond Wand",
        Color: "white",
        Folder: "wands",
        Description: "Damage: 7 | Cooldown: 8",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1125,
        Namespace: "diamond_wand",
        FunctionName: "diamond",
        MainSpell: {
            ...spells.Damage,
            SpellDamage: 7,
        },
        SecondarySpell: {
            ...spells.Damage,
            SpellDamage: 7,
        },
    },
    // Staffs
    wooden_staff: {
        Name: "Wooden Staff",
        Color: "white",
        Folder: "staffs",
        Description: "Summon damage sentry",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1126,
        Namespace: "wooden_staff",
        FunctionName: "wooden",
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
        Description: "Summon heal sentry",
        Cooldown: 8,
        Particle: "minecraft:crit",
        CustomModelData: 1127,
        Namespace: "stone_staff",
        FunctionName: "stone",
        MainSpell: {
            ...spells.Raycast,
        },
        SecondarySpell: {
            ...spells.Raycast,
        },
    },
};