module.exports = {
    damage_sentry:{
        Namespace: "Damage",
        Lifetime: 15,
        Target: "#nightrunner:enemy",
        Distance: 6,
        DustColor: "1.0,0.0,0.0",
        DisplayBlock: "minecraft:calibrated_sculk_sensor",
        ConcurrentAttacks: 3,
    },
    heal_sentry:{
        Namespace: "Heal",
        Lifetime: 5,
        Target: "player",
        Distance: 6,
        DustColor: "0.0,1.0,0.0",
        DisplayBlock: "minecraft:beacon",
        ConcurrentAttacks: 3,
    }
}