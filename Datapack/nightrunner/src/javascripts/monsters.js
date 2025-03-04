const Events = Object.freeze({
    OVERWORLD_DEFAULT: 'overworld_default',
    NETHER_DEFAULT: 'nether_default',
    END_DEFAULT: 'end_default',
});
const MobTypes = Object.freeze({
    ZOMBIE: '#nightrunner:zombies',
    SKELETON: 'skeleton',
    CREEPER: 'creeper',
    SPIDER: 'spider',
    ENDERMAN: 'enderman',
    WITCH: 'witch',
});
let DefaultMonsterData = {
    Name: "Default Zombie",
    Type: "zombie",
    Event: Events.OVERWORLD_DEFAULT,
    Health: 20,
    AttackDamage: 10,
    Speed: 0.31,
    Scale: 1,
    CanPickupLoot: true,
    Debug: true,
    TargetScore: 50,
    Weight: 1,
    compiledData: "",
};
//=================================================
// MARK: Define MonsterData
//=================================================
let MonsterData = [];
MonsterData.push({
    ...DefaultMonsterData,
});
MonsterData.push({
    ...DefaultMonsterData,
    Name: "Default Skeleton",
    Type: "skeleton",
});
MonsterData.push({
    ...DefaultMonsterData,
    Name: "Zombified Piglin",
    Type: "zombified_piglin",
});
//=================================================
// MARK: Helper function
//=================================================
function addToDataArray(dataArray, input) {
    dataArray.push(input + '\n'); // Add input to dataArray and add a newline
}
// Helper function to transform name
function transformName(name) {
    return name.toLowerCase().replace(/\s+/g, '');
}
//=================================================
// MARK: Pre compile
//=================================================
// TODO: Add weight check based on type
// So get all types and add their weight to the total weight and make that variable
//=================================================
// MARK: Compile MonsterData
//=================================================
let CompiledMonsterData = "";
for(let i = 0; i < MonsterData.length; i++) {
    let monster = MonsterData[i];
    let dataArray = [];

    let transformedName = transformName(monster.Name);

    addToDataArray(dataArray, `function ${transformedName} nightrunner:${monster.Event}{`); // Function start

    // Randomize NightrunnerMonster score
    addToDataArray(dataArray, `execute store result score @e[type=${monster.Type},tag=!Nightrunner,limit=1] Nightrunner_MobDefiner run random value 0..100`);

    // Check if NightrunnerMonster score is less than TargetScore
    addToDataArray(dataArray, `execute as @e[type=${monster.Type},tag=!Nightrunner,limit=1] run block data/${monster.transformName}{`);
    // Data merge entity
    addToDataArray(dataArray, `execute if score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..${monster.TargetScore} run data merge entity @s {CustomName:"${transformedName}",Tags:["Nightrunner"],attributes:[{id:"minecraft:generic.attack_damage",base:${monster.AttackDamage}},{id:"minecraft:generic.movement_speed",base:${monster.Speed}}]}`);
    if(monster.Debug)
    {
        addToDataArray(dataArray, `execute if score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..${monster.TargetScore} run tellraw @a {"text":"${transformedName} has been spawned","color":"green"}`);
        addToDataArray(dataArray, `execute unless score @s[tag=!Nightrunner] Nightrunner_MobDefiner matches ..${monster.TargetScore} run tellraw @a {"text":"${transformedName} has been spawned","color":"red"}`);
        addToDataArray(dataArray, `teleport @s @p`);
    }
    addToDataArray(dataArray, `}`); // Close block data/${monster.transformName}

    addToDataArray(dataArray, `}`); // Function end

    monster.compiledData = dataArray.join('');
}
// Join all compiled data into one string
CompiledMonsterData = MonsterData.map(monster => monster.compiledData).join('');
// Create debug function for each event
let EventData = [];
addToDataArray(EventData, `dir debug{`);
for(let i = 0; i < Object.values(Events).length; i++) {
    let event = Object.values(Events)[i];
    let dataArray = [];
    addToDataArray(dataArray, `function debug_${event}{`);

    addToDataArray(dataArray, `say Running one time: ${event}`);
    addToDataArray(dataArray, `function #nightrunner:${event}`);

    addToDataArray(dataArray, `}`);
    EventData.push(dataArray.join(''));
}
addToDataArray(EventData, `}`);
// Join all event data into one string
CompiledMonsterData += EventData.join('');
//=================================================
// MARK: Export MonsterData
//=================================================
module.exports = {
    CompiledMonsterData
};