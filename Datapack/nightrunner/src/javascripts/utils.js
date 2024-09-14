// utils.js
function autoGenerateAdvancement(advancement_name, advancement_tag) {
    let advancementArray = [];
    advancementArray.push(`advancement interacted_with_${advancement_name}_right{\n`);
    advancementArray.push(`"criteria": {\n`);
    advancementArray.push(`"requirement": {\n`);
    advancementArray.push(`"trigger": "minecraft:player_interacted_with_entity",\n`);
    advancementArray.push(`"conditions": {\n`);
    advancementArray.push(`"entity": {\n`);
    advancementArray.push(`"type": "minecraft:interaction",\n`);
    advancementArray.push(`"nbt": "{Tags:[\\"${advancement_tag}\\"]}"\n`);
    advancementArray.push(`}\n`); // Close "entity"
    advancementArray.push(`}\n`); // Close "conditions"
    advancementArray.push(`}\n`); // Close "requirement"
    advancementArray.push(`},\n`); // Close "criteria"
    advancementArray.push(`"rewards": {\n`);
    advancementArray.push(`"function": "nightrunner:crafting/enchanting_table_craft/right_clicked"\n`);
    advancementArray.push(`}\n`); // Close "rewards"
    advancementArray.push(`}\n`); // Close "advancement"
    return advancementArray.join('');
}
let testingName = 'test';
module.exports = {
    autoGenerateAdvancement, testingName
};