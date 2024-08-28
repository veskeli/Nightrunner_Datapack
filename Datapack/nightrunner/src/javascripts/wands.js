// Description: This file contains the wand data for the Nightrunner datapack.
module.exports = {
    wooden_wand : {
        Name: "Wooden Wand",
        Color: "white",
        Description: "A basic wand with ranged damage spell.",
        Cooldown: 6,
        Particle: "minecraft:crit",
        CustomModelData: 1121,
        Namespace: "wooden_wand",
        FunctionName: "wooden",
        MainSpell: "Damage",
        SpellDamage: 4,
        SecondarySpell: "Heal",
        HealAmount: 1,
    },
    stone_wand: {
        Name: "Stone Wand",
        Color: "white",
        Description: "A basic wand with ranged damage spell.",
        Cooldown: 6,
        Particle: "minecraft:crit",
        CustomModelData: 1122,
        Namespace: "stone_wand",
        FunctionName: "stone",
        MainSpell: "Damage",
        SpellDamage: 6,
        SecondarySpell: "",
        HealAmount: 0,
    }
}