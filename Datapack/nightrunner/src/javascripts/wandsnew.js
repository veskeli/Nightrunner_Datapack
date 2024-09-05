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
// MARK: Wands
//=================================================
let wooden_wand = {
    Name: "Wooden Testing Wand",
        Color: "aqua",
        Folder: "wands",
        Description: `'[{"color":"green","text":"Cooldown: "},{"color":"aqua","text":"8"}]','[{"color":"green","text":"Mana cost: "},{"color":"aqua","text":"1"}]','[{"color":"light_purple","text":"Spell: "},{"color":"gold","text":"Damage"}]','[{"color":"dark_green","text":"Damage: "},{"color":"dark_aqua","text":"4"}]','{"color":"gray","text":"(Can be cast for half damage if out of mana.)"}'`,
        Cooldown: 8,
        Particle: "minecraft:wax_off",
        CustomModelData: 1121,
        Durability: 1059,
        Namespace: "wooden_test_wand",
        RecipePattern: [ "  y", " i ", "i  "],
        RecipeKey: {
            "i": {
                "item": "minecraft:stick"
            },
            "y": {
                "item": "minecraft:emerald"
            }
        },
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
        SecondarySpell: {
            ...spells.Raycast,
        },
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
    RecipePattern: [ "  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:diamond"
        }
    },
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
    RecipePattern: [ "  y", " i ", "i  "],
    RecipeKey: {
        "i": {
            "item": "minecraft:stick"
        },
        "y": {
            "item": "minecraft:diamond"
        }
    },
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
    MainOrOffhand = ['mainhand', 'offhand'];
    // Dir
    DataArray.push(`dir ` + WandData.Namespace + `{\n`);

    //=================================================
    // MARK: StartRaycast
    //=================================================
    for(let j = 0; j < MainOrOffhand.length; j++)
    {
        DataArray.push(`function start_raycast_` + MainOrOffhand[j] + `{\n`);
        // Reset Nightrunner Mana
        DataArray.push('scoreboard players reset $Nightrunner Nightrunner_Mana\n');

        // Check if cooldown is active
        DataArray.push('execute if score @s Nightrunner_SpellCooldown matches 1.. run return 1\n')

        let value = WandData.ManaCost - 1;

        // Check if the spell can be casted without mana
        let ManaStart = 'execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..';
        if(WandData.MainSpell.Name == "Damage") // Damage spell can be casted without mana but with damage loss
        {
            DataArray.push(ManaStart + value + ' run scoreboard players set $Nightrunner Nightrunner_Weak_Use 1\n')
        }
        else
        {
            DataArray.push(ManaStart + value + ' run return run tellraw @s [{"text":"Not enough mana!","color":"red"}]\n')
        }
        // Play sound
        if(WandData.MainSpell.Name == "Damage") // Damage spell can be casted without mana but with damage loss
        {
            DataArray.push('execute if score @s[gamemode=!creative] Nightrunner_Mana matches ..' + value + ' run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 1.5\n')
            DataArray.push('execute if score @s[gamemode=!creative] Nightrunner_Mana matches ' + WandData.ManaCost + '.. run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2\n')
            DataArray.push('execute as @s[gamemode=creative] run execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2\n')
        }
        else
        {
            DataArray.push('execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.3 2 \n')
        }

        // Add Cooldown
        DataArray.push('scoreboard players set @s Nightrunner_SpellCooldown ' + WandData.Cooldown + '\n')
        // Reset scoreboards
        DataArray.push('scoreboard players reset @s Nightrunner_Item_Ray_steps\n')
        DataArray.push('scoreboard players reset $Nightrunner Nightrunner_Item_Ray_steps\n')

        // Set spell range
        DataArray.push(`execute as @s run scoreboard players operation $Nightrunner Nightrunner_RangedSpellRange = @s Nightrunner_RangedSpellRange\n`);
        let LeatherArmor = ['leather_boots', 'leather_leggings', 'leather_chestplate', 'leather_helmet'];
        let RangeAddAmount = 15;
        for(let i = 0; i < LeatherArmor.length; i++)
        {
            DataArray.push('execute as @s if entity @s[nbt={Inventory:[{Slot:' + (100 + i) + 'b,id:"minecraft:' + LeatherArmor[i] + '"}]}] run scoreboard players add $Nightrunner Nightrunner_RangedSpellRange ' + RangeAddAmount + '\n');
        }
        // tell spell range
        DataArray.push(`tellraw @s [{"text":"Spell range: ","color":"aqua"},{"score":{"name":"$Nightrunner","objective":"Nightrunner_RangedSpellRange"}}]\n`);

        // Reset effect cooldown
        DataArray.push(`scoreboard players reset $NightrunnerCooldown Nightrunner_EffectCooldown\n`);

        // Raycast
        DataArray.push(`tag @s add raycasting\n`);
        DataArray.push(`execute anchored eyes positioned ^ ^ ^ store result score @s Nightrunner_Item_Ray_Return run function ./raycast_` + MainOrOffhand[j] + `\n`);
        DataArray.push(`tag @s remove raycasting\n`);

        // Check item durability use
        DataArray.push(`function ./check_unbreaking\n`);

        // Check mana efficiency
        DataArray.push(`function ./check_mana_efficiency\n`);

        // Reset weak use
        DataArray.push(`scoreboard players reset $Nightrunner Nightrunner_Weak_Use\n`);
        DataArray.push(`}\n`);
    }

    //=================================================
    // MARK: Unbreaking
    //=================================================
    DataArray.push(`function check_unbreaking{\n`);

    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}}] run execute if predicate nightrunner:50change run return 1\n`);
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}]}] run execute if predicate nightrunner:50change run return 1\n`);

    // Unbreaking 2
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":2}}}}}] run execute if predicate nightrunner:66change run return 1\n`);
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":2}}}}]}] run execute if predicate nightrunner:66change run return 1\n`);

    // Unbreaking 3
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":3}}}}}] run execute if predicate nightrunner:75change run return 1\n`);
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true},"minecraft:enchantments":{levels:{"minecraft:unbreaking":3}}}}]}] run execute if predicate nightrunner:75change run return 1\n`);

    // Default
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true}}}}] run item modify entity @s weapon.mainhand nightrunner:damage_item\n`);
    DataArray.push(`execute if entity @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true}}}]}] run item modify entity @s weapon.offhand nightrunner:damage_item\n`);

    DataArray.push(`}\n`);

    //=================================================
    // MARK: Mana efficiency
    //=================================================
    // Reduce mana (not in creative mode)
    DataArray.push(`function check_mana_efficiency{\n`);
    if(WandData.ConsumeManaOnCast)
    {
        let halfMana = WandData.ManaCost / 2;
        if(halfMana < 1) halfMana = 0;
        let TakeHalfMana = `scoreboard players remove @s Nightrunner_Mana ` + halfMana;
        let blockArray = [];

        // Mana efficiency 1
        DataArray.push(`execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":1}}}}}] run execute if predicate nightrunner:` + `10change` + ` run return run ` + TakeHalfMana + `\n`);

        // Mana efficiency 2
        DataArray.push(`execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":2}}}}}] run execute if predicate nightrunner:` + `35change` + ` run return run ` + TakeHalfMana + `\n`);

        // Mana efficiency 3
        DataArray.push(`execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{wand:true},"minecraft:enchantments":{levels:{"nightrunner:mana_efficiency":3}}}}}] run execute if predicate nightrunner:` + `50change` + ` run return run ` + TakeHalfMana + `\n`);

        // Default
        DataArray.push('execute as @s[gamemode=!creative,scores={Nightrunner_Mana=1..}] run scoreboard players remove @s Nightrunner_Mana ' + WandData.ManaCost + '\n');

    }
    else
    {
        DataArray.push('scoreboard players set $Nightrunner Nightrunner_Mana ' + WandData.ManaCost + '\n');
    }

    DataArray.push(`}\n`);

    //=================================================
    // MARK: Raycast
    //=================================================

    for(let j = 0; j < MainOrOffhand.length; j++)
    {
        DataArray.push(`function raycast_` + MainOrOffhand[j] + `{\n`);

        let CheckQuality = 0.9;
        let ExecuteAsRaycast = 'execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-';
        let RunNightrunnerWandFunction = ' run function nightrunner:items/tools/' + WandData.Folder + '/';
        // If hit entity
        if(WandData.MainSpell.HitType == 1)
        {
            // Add coordinates
            ExecuteAsRaycast = ExecuteAsRaycast + CheckQuality +' ~-' + CheckQuality +' ~-' + CheckQuality +' if entity @s[dx=0] positioned ~' + CheckQuality +' ~' + CheckQuality +' ~' + CheckQuality;
            switch(WandData.MainSpell.Name)
            {
                case "Damage":
                    DataArray.push(ExecuteAsRaycast + RunNightrunnerWandFunction + WandData.FunctionName + '/spell_damage\n');
                    break;
                default:
                    DataArray.push(ExecuteAsRaycast + RunNightrunnerWandFunction + WandData.FunctionName + '/hit_entity\n');
                    break;
            }
            // Return if hit entity
            DataArray.push(ExecuteAsRaycast +' run return 1\n');

            // If hit enetity but hit block
            DataArray.push('execute unless block ~ ~ ~ #nightrunner:air run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force\n');
        }
        else // If hit block
        {
            DataArray.push('execute unless block ~ ~ ~ #nightrunner:air' + RunNightrunnerWandFunction + WandData.FunctionName + '/hit_block\n');
        }
        // If no hit
        DataArray.push('execute unless block ~ ~ ~ #nightrunner:air run return 2\n');

        // If raycast range is reached particle
        DataArray.push(`execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force\n`);

        // If raycast range is reached return
        DataArray.push(`execute if score $Nightrunner Nightrunner_Item_Ray_steps >= $Nightrunner Nightrunner_RangedSpellRange run return 3\n`);

        // Handle effects while raycasting
        DataArray.push(`execute if score $Nightrunner Nightrunner_Item_Ray_steps matches 15.. run block effect{\n`);
        DataArray.push(`execute if score $NightrunnerCooldown Nightrunner_EffectCooldown matches 1.. run scoreboard players remove $NightrunnerCooldown Nightrunner_EffectCooldown 1\n`);
        DataArray.push(`execute if score $NightrunnerCooldown Nightrunner_EffectCooldown matches 1.. run return 1\n`);
        DataArray.push(`particle ` + WandData.Particle + ` ~ ~ ~ 0 0 0 0.02 1 force\n`);
        DataArray.push(`scoreboard players add $NightrunnerCooldown Nightrunner_EffectCooldown 8\n`);
        DataArray.push(`}\n`);

        // Add steps
        DataArray.push(`scoreboard players add $Nightrunner Nightrunner_Item_Ray_steps 1\n`);

        // Loop
        DataArray.push(`execute positioned ^ ^ ^0.25 rotated ~ ~ run function ./raycast_` + MainOrOffhand[j] + `\n`);

        DataArray.push(`}\n`);
    }

    //=================================================
    // MARK: Check
    //=================================================

    // Check that tool was used
    // TODO: Add tick functions to single so it can be disabled
    DataArray.push(`function check minecraft:tick{\n`);
    DataArray.push(`execute as @a if score @s Nightrunner_Used_Magic_tool matches 1 run function ./check_wand\n`);
    DataArray.push(`}\n`);

    DataArray.push(`function check_wand{\n`);

    if(WandData.MainSpell && WandData.MainSpell.Name !== undefined) // Main item
    {
        let MainFunctionName = 'function nightrunner:items/tools/' + WandData.Folder + '/' + WandData.FunctionName + '/use';
        switch(WandData.MainSpell.Name)
        {
            case "Damage":
                MainFunctionName = 'execute at @s run function ./start_raycast_' + MainOrOffhand[0];
                break;
            case "Heal":
                MainFunctionName = 'function ./spell_heal';
                break;
            case "Raycast":
                MainFunctionName = 'execute at @s run function ./start_raycast_'  + MainOrOffhand[0];
                break;
        }
        // Emit function
        DataArray.push('execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{' + WandData.Namespace + ':true,wand:true}}}}] run ' + MainFunctionName + '\n');
    }

    if(WandData.SecondarySpell && WandData.SecondarySpell.Name !== undefined) // Offhand item
    {
        let OffhandFunctionName = 'function nightrunner:items/tools/' + WandData.Folder + '/' + WandData.FunctionName + '/use_secondary';
        switch(WandData.SecondarySpell.Name)
        {
            case "Damage":
                OffhandFunctionName = 'execute at @s run function ./start_raycast_' + MainOrOffhand[1];
                break;
            case "Heal":
                OffhandFunctionName = 'function ./spell_heal';
                break;
            case "Raycast":
                OffhandFunctionName = 'execute at @s run function ./start_raycast_'  + MainOrOffhand[1];
                break;
        }
        // Emit function
        DataArray.push('execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{' + WandData.Namespace + ':true,wand:true}}}]}] run ' + OffhandFunctionName + '\n');
    }
    // Reset used tool main hand
    DataArray.push(`execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true}}}}] run scoreboard players reset @s Nightrunner_Used_Magic_tool\n`);
    // Reset used tool off hand
    DataArray.push(`execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,components:{"minecraft:custom_data":{` + WandData.Namespace + `:true,wand:true}}}]}] run scoreboard players reset @s Nightrunner_Used_Magic_tool\n`);


    DataArray.push(`}\n`);

    //=================================================
    // MARK: Give function
    //=================================================
    DataArray.push(`function give{\n`);
    DataArray.push(`give @s minecraft:warped_fungus_on_a_stick[custom_data={` + WandData.Namespace + `:true,wand:true},item_name='{"text":"` + WandData.Name + `","italic":false,"color":"` + WandData.Color + `"}',lore=[` + WandData.Description + `,'{"text":"Nightrunner","color":"aqua"}'],custom_model_data=` + WandData.CustomModelData + `,max_damage=` + WandData.Durability + `] 1\n`);
    DataArray.push(`}\n`);

    //=================================================
    // MARK: Recipe gen
    //=================================================

    DataArray.push(`recipe ` + WandData.Namespace + `{\n`);
    DataArray.push(`"type": "minecraft:crafting_shaped",\n`);

    // Dynamically generate the pattern section
    DataArray.push(`"pattern": [\n`);
    WandData.RecipePattern.forEach((pattern, index) => {
        DataArray.push(`"${pattern}"` + (index < WandData.RecipePattern.length - 1 ? `,\n` : `\n`));
    });
    DataArray.push(`],\n`);

    // Dynamically generate the key section
    DataArray.push(`"key": {\n`);
    const keys = Object.keys(WandData.RecipeKey);
    keys.forEach((key, index) => {
        DataArray.push(`"${key}": {\n`);
        DataArray.push(`"item": "${WandData.RecipeKey[key].item}"\n`);
        DataArray.push(`}` + (index < keys.length - 1 ? `,\n` : `\n`));
    });
    DataArray.push(`},\n`);

    DataArray.push(`"result": {\n`);
    DataArray.push(`"id": "minecraft:warped_fungus_on_a_stick",\n`);
    DataArray.push(`"count": 1,\n`);
    DataArray.push(`"components":{\n`);
    DataArray.push(`"item_name":"[{\\"text\\":\\"` + WandData.Name + `\\",\\"italic\\":false,\\"color\\":\\"` + WandData.Color + `\\"}]",\n`);
    DataArray.push(`"lore": [ ` + WandData.Description.replace(/"/g, '\\"').replace(/'/g, '"') + `,"{\\"text\\":\\"Nightrunner\\",\\"color\\":\\"aqua\\"}"],\n`);
    DataArray.push(`"custom_model_data": ` + WandData.CustomModelData + `,\n`);
    DataArray.push(`"custom_data": {\n`);
    DataArray.push(`"` + WandData.Namespace + `": true,\n`);
    DataArray.push(`"wand": true\n`);
    DataArray.push(`},\n`);
    DataArray.push(`"max_damage": ` + WandData.Durability + `\n`);
    DataArray.push(`}\n`);
    DataArray.push(`}\n`);

    DataArray.push(`}\n`);

    //=================================================
    // MARK: Damage Spell
    //=================================================
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

    //=================================================
    // MARK: Heal Spell
    //=================================================
    // TODO: support both hands
    if(WandData.MainSpell.HealAmount > 0){
        DataArray.push(`function spell_heal{\n`);
        DataArray.push(`effect give @s minecraft:instant_health 1 ` + WandData.MainSpell.HealAmount + `\n`);
        DataArray.push(`}\n`);
    }

    // end dir
    DataArray.push(`}`);
    // MARK: Compile
    WandData.compiledData = DataArray.join('');
}

//=================================================
// MARK: Export
//=================================================
module.exports = {
    WandsArray: NewWandsArray,
}