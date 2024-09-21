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
        Tiers: {
            Wood: {
                SpellDamage: 4,
                ManaCost: 1,
                Cooldown: 8,
            },
            Stone: {
                SpellDamage: 5,
                ManaCost: 1,
                Cooldown: 8,
            },
            Iron: {
                SpellDamage: 6,
                ManaCost: 1,
                Cooldown: 8,
            },
            Gold: {
                SpellDamage: 11,
                ManaCost: 2,
                Cooldown: 8,
            },
            Diamond: {
                SpellDamage: 7,
                ManaCost: 1,
                Cooldown: 8,
            }
        },
        HitType: HitType.ENTITY,
        Lore: function(tier) {
            return [
                [{"text": "Spell: ","color": "light_purple"}, {"text": "Damage","color": "gold"}],
                [{"text": "Damage: ","color": "dark_green"}, {"text": this.Tiers[tier].SpellDamage.toString(),"color": "dark_aqua"}],
                [{"text": "Mana cost: ","color": "dark_green"}, {"text": this.Tiers[tier].ManaCost.toString(),"color": "dark_aqua"}],
                [{"text": "Cooldown: ","color": "dark_green"}, {"text": this.Tiers[tier].Cooldown.toString(),"color": "dark_aqua"}],
                [{"text": "(Can be cast for half damage if out of mana.)","color": "gray"}]
            ];
        },
    },
    Heal: {
        Name: "Heal",
        Tiers: {
            Wood: {
                HealAmount: 4,
                ManaCost: 1,
                Cooldown: 8,
            },
            Stone: {
                HealAmount: 5,
                ManaCost: 1,
                Cooldown: 8,
            },
            Iron: {
                HealAmount: 6,
                ManaCost: 1,
                Cooldown: 8,
            },
            Gold: {
                HealAmount: 11,
                ManaCost: 2,
                Cooldown: 8,
            },
            Diamond: {
                HealAmount: 7,
                ManaCost: 1,
                Cooldown: 8,
            }
        },
        HitType: HitType.ENTITY,  // Default hit type is entity
        Lore: function(tier) {
            return [
                [{"text": "Spell: ","color": "light_purple"}, {"text": "Heal","color": "gold"}],
                [{"text": "Heal: ","color": "dark_green"}, {"text": this.Tiers[tier].HealAmount.toString(),"color": "dark_aqua"}],
                [{"text": "Mana cost: ","color": "dark_green"}, {"text": this.Tiers[tier].ManaCost.toString(),"color": "dark_aqua"}],
                [{"text": "Cooldown: ","color": "dark_green"}, {"text": this.Tiers[tier].Cooldown.toString(),"color": "dark_aqua"}],
                [{"text": "(Can be cast for half damage if out of mana.)","color": "gray"}]
            ];
        },
    },
    Raycast: {
        Name: "Raycast",
        HitType: HitType.ALL,
        Lore: [
            [{"text": "Spell: ","color": "light_purple"}, {"text": "Raycast","color": "gold"}],
            [{"text": "Damage: ","color": "dark_green"}, {"text": "1","color": "dark_aqua"}],
            [{"text": "Mana cost: ","color": "dark_green"}, {"text": "1","color": "dark_aqua"}],
            [{"text": "Cooldown: ","color": "dark_green"}, {"text": "8","color": "dark_aqua"}],
            [{"text": "(Can be cast for half damage if out of mana.)","color": "gray"}]
        ],
    },
    SummonSentry: {
        Name: "Summon Sentry",
        Tiers: {
            Wood: {
                Namespace: "Wooden",
                Lifetime: 13,
                Target: "#nightrunner:enemy",
                Distance: 3,
                DustColor: "1.0,0.0,0.0",
                DisplayBlock: "minecraft:calibrated_sculk_sensor",
                ConcurrentAttacks: 1,
                ManaCost: 2,
                Cooldown: 8,
            },
            Stone: {
                Namespace: "Stone",
                Lifetime: 14,
                Target: "#nightrunner:enemy",
                Distance: 3,
                DustColor: "1.0,0.0,0.0",
                DisplayBlock: "minecraft:calibrated_sculk_sensor",
                ConcurrentAttacks: 2,
                ManaCost: 2,
                Cooldown: 8,
            },
            Iron: {
                Namespace: "Iron",
                Lifetime: 16,
                Target: "#nightrunner:enemy",
                Distance: 5,
                DustColor: "1.0,0.0,0.0",
                DisplayBlock: "minecraft:calibrated_sculk_sensor",
                ConcurrentAttacks: 3,
                ManaCost: 2,
                Cooldown: 8,
            },
            Gold: {
                Namespace: "Golden",
                Lifetime: 15,
                Target: "#nightrunner:enemy",
                Distance: 3,
                DustColor: "0.973,1.000,0.212",
                DisplayBlock: "minecraft:calibrated_sculk_sensor",
                ConcurrentAttacks: 5,
                ManaCost: 2,
                Cooldown: 8,
            },
            Diamond: {
                Namespace: "Diamond",
                Lifetime: 18,
                Target: "#nightrunner:enemy",
                Distance: 5,
                DustColor: "1.0,0.0,0.0",
                DisplayBlock: "minecraft:calibrated_sculk_sensor",
                ConcurrentAttacks: 4,
                ManaCost: 2,
                Cooldown: 8,
            }
        },
        HitType: HitType.BLOCK,
        Lore: function(tier) {
            return [
                [{"text": "Spell: ","color": "light_purple"}, {"text": "Summon Sentry","color": "gold"}],
                [{"text": "Distance: ","color": "dark_green"}, {"text": this.Tiers[tier].Distance.toString(),"color": "dark_aqua"}],
                [{"text": "ConcurrentAttacks: ","color": "dark_green"}, {"text": this.Tiers[tier].ConcurrentAttacks.toString(),"color": "dark_aqua"}],
                [{"text": "Mana cost: ","color": "dark_green"}, {"text": this.Tiers[tier].ManaCost.toString(),"color": "dark_aqua"}],
                [{"text": "Cooldown: ","color": "dark_green"}, {"text": this.Tiers[tier].Cooldown.toString(),"color": "dark_aqua"}],
                [{"text": "(Can be cast for half damage if out of mana.)","color": "gray"}]
            ];
        },
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
// MARK: Wand Template
//=================================================
const defaultValues = {
    Name: "Default Wand",
    Color: "white",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"None"}]','{"color":"gray","text":"No additional info."}'`,
    Cooldown: 8,
    Particle: "minecraft:wax_off",
    CustomModelData: 1000,
    Durability: 1000,
    Namespace: "default_namespace",
    UseRecipe: false,
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
        // Default spell
    },
    SecondarySpell: {},
    Sentry: Sentries.null_sentry,
    compiledData: ""
};
function createWand(options) {
    return {
        ...defaultValues,
        ...options,
    };
}
//=================================================
// MARK: Wands
//=================================================
const wooden_wand = createWand({
    Name: "Wooden Wand",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"4"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    CustomModelData: 1121,
    Durability: 1059,
    Namespace: "wooden_wand",
    UseRecipe: true,
    RecipePattern: [ " i", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        }
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 4,
    },
});
NewWandsArray.push(wooden_wand);
const stone_wand = createWand({
    Name: "Stone Wand",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"5"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    CustomModelData: 1122,
    Durability: 1131,
    Namespace: "stone_wand",
    UseRecipe: true,
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:cobblestone"
        }
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 5,
    },
});
NewWandsArray.push(stone_wand);
const iron_wand = createWand({
    Name: "Iron Wand",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"6"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    CustomModelData: 1123,
    Durability: 1250,
    Namespace: "iron_wand",
    UseRecipe: true,
    RecipePattern: [ " y", "i "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:iron_ingot"
        }
    },
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 6,
    }
});
NewWandsArray.push(iron_wand);
const golden_wand = createWand({
    Name: "Golden Wand",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"16"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"11"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    Cooldown: 16,
    CustomModelData: 1124,
    Durability: 1032,
    Namespace: "golden_wand",
    UseRecipe: true,
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
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 11,
    },
});
NewWandsArray.push(golden_wand);
const diamond_wand = createWand({
    Name: "Diamond Wand",
    Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"7"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
    CustomModelData: 1125,
    Durability: 2561,
    UseRecipe: true,
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
    MainSpell: {
        ...spells.Damage,
        SpellDamage: 7,
    },
});
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
    UseRecipe: true,
    RecipePattern: ["  i", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        }
    },
    ManaCost: 2,
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
    UseRecipe: true,
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:cobblestone"
        }
    },
    ManaCost: 2,
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
    UseRecipe: true,
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:iron_ingot"
        }
    },
    ManaCost: 2,
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
    UseRecipe: true,
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:gold_ingot"
        }
    },
    ManaCost: 2,
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
    UseRecipe: true,
    RecipePattern: ["  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:diamond"
        }
    },
    ManaCost: 2,
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