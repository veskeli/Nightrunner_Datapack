// Get wands from wand.js
const { NewWandsArray, HitType, spells, Custom_attributes  } = require('./wands');
let DataArray = [];
//=================================================
// MARK: Start Compile data
//=================================================
for(let i = 0; i < NewWandsArray.length; i++){
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

        // Check if its sentry and Nightrunner_SentryCooldown is active
        if(WandData.MainSpell.Name == "Summon Sentry")
        {
            DataArray.push('execute if score @s Nightrunner_SentryCooldown matches 1.. run return run tellraw @s [{"text":"⚠ ","color":"yellow","bold":true},{"text":"Sentry Cooldown: ","color":"red","bold":true,"italic":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"Nightrunner_SentryCooldown"},"color":"white","bold":true},{"text":"]","color":"gray"},{"text":" still active!","color":"red","italic":true}]\n')
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

        // Check mana
        if(WandData.ConsumeManaOnCast == true)
        {
            DataArray.push(`function ./check_mana\n`);
        }
        else
        {
            DataArray.push('scoreboard players set $Nightrunner Nightrunner_Mana ' + WandData.ManaCost + '\n');
        }

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
    DataArray.push(`function check_mana{\n`);
    let halfMana = Math.floor(WandData.ManaCost / 2);
    if(halfMana < 1) halfMana = 0; // Prevent negative mana cost
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

    DataArray.push(`}\n`);

    //=================================================
    // MARK: Raycast
    //=================================================

    for(let j = 0; j < MainOrOffhand.length; j++)
    {
        DataArray.push(`function raycast_` + MainOrOffhand[j] + `{\n`);

        let CheckQuality = 0.9;
        let ExecuteAsRaycast = 'execute as @e[dx=0,type=!#nightrunner:not_mob,tag=!raycasting,limit=1] positioned ~-';
        // If hit entity
        if(WandData.MainSpell.HitType == 1)
        {
            // Add coordinates
            ExecuteAsRaycast = ExecuteAsRaycast + CheckQuality +' ~-' + CheckQuality +' ~-' + CheckQuality +' if entity @s[dx=0] positioned ~' + CheckQuality +' ~' + CheckQuality +' ~' + CheckQuality;
            switch(WandData.MainSpell.Name)
            {
                case "Damage":
                    DataArray.push(ExecuteAsRaycast + ' run function ./spell_damage\n');
                    break;
                default:
                    DataArray.push(ExecuteAsRaycast + ' run function ./hit_entity\n');
                    break;
            }
            // Return if hit entity
            DataArray.push(ExecuteAsRaycast +' run return 1\n');

            // If hit enetity but hit block
            DataArray.push('execute unless block ~ ~ ~ #nightrunner:air run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force\n');
        }
        else // If hit block
        {
            DataArray.push('execute unless block ~ ~ ~ #nightrunner:air run function ./hit_block\n');
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
        let MainFunctionName = 'function ./use';
        switch(WandData.MainSpell.Name)
        {
            case "Heal":
                MainFunctionName = 'function ./spell_heal';
                break;
            case "Raycast":
            case "Summon Sentry":
            case "Damage":
                MainFunctionName = 'execute at @s run function ./start_raycast_'  + MainOrOffhand[0];
                break;
        }
        // Emit function
        DataArray.push('execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{' + WandData.Namespace + ':true,wand:true}}}}] run ' + MainFunctionName + '\n');
    }

    if(WandData.SecondarySpell && WandData.SecondarySpell.Name !== undefined) // Offhand item
    {
        let OffhandFunctionName = 'function ./use_secondary';
        switch(WandData.SecondarySpell.Name)
        {
            case "Heal":
                OffhandFunctionName = 'function ./spell_heal';
                break;
            case "Raycast":
            case "Damage":
            case "Summon Sentry":
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

    if(WandData.UseRecipe == true)
    {
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
    }

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
    // MARK: Summon Sentry
    //=================================================

    if(WandData.Sentry.Namespace != "Null")
    {
        // I: Summon sentry
        DataArray.push(`function summon_sentry{\n`);

        // Kill other sentries with the same id
        DataArray.push(`execute as @e[type=block_display,tag=sentry] if score @s Nightrunner_SentryID = @a[limit=1,sort=nearest,tag=raycasting] Nightrunner_ID run kill @s\n`);

        // Summon sentry
        DataArray.push(`summon block_display ~ ~0.5 ~ {Tags:["sentry","just_spawned","` + WandData.Sentry.Namespace + `"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,0f,-0.35f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"` + WandData.Sentry.DisplayBlock + `"}}\n`);
        // Setup sentry
        DataArray.push(`execute as @e[type=block_display,tag=sentry,tag=just_spawned] run block setup_spawned_sentry{\n`);
        DataArray.push(`execute at @s run particle ominous_spawning ~ ~ ~ 0 0 0 1 100 normal\n`);
        DataArray.push(`tag @s remove just_spawned\n`);
        DataArray.push(`execute store result score @s Nightrunner_SentryID run scoreboard players get @a[limit=1,sort=nearest,tag=raycasting] Nightrunner_ID\n`);

        // Set lifetime
        DataArray.push(`scoreboard players set @s Nightrunner_SentryLifetime ` + WandData.Sentry.Lifetime + `\n`);

        // Sound
        DataArray.push(`execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.7 0.2\n`);

        DataArray.push(`}\n`);

        // Mana cost
        DataArray.push(`function ./check_mana\n`);

        // Add sentry cooldown
        DataArray.push(`scoreboard players set @s[gamemode=survival] Nightrunner_SentryCooldown 600\n`); // TODO: Remove hard coded value

        // Reset nightrunner mana
        DataArray.push(`scoreboard players reset $Nightrunner Nightrunner_Mana\n`);

        DataArray.push(`}\n`);

        // MARK: Check sentry
        DataArray.push(`clock clock_check_sentry 60t{\n`);

        DataArray.push(`execute as @e[type=block_display,tag=sentry,tag=` + WandData.Sentry.Namespace + `] run block add_sentry_attack{\n`);
        DataArray.push(`execute at @s run execute as @e[distance=..` + WandData.Sentry.Distance + `,type=` + WandData.Sentry.Target + `,limit=` + WandData.Sentry.ConcurrentAttacks + `,sort=nearest] run block summon_fangs{\n`);
        DataArray.push(`execute at @s run summon evoker_fangs ~ ~ ~ {Warmup:0}\n`);
        // TODO: Add correct player UUID
        DataArray.push(`execute as @e[type=evoker_fangs,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID\n`);
        DataArray.push(`}\n`);
        DataArray.push(`}\n`);

        DataArray.push(`}\n`);

        // MARK: Sentry slowness
        DataArray.push(`clock clock_check_sentry_slowness 3t{\n`);

        DataArray.push(`execute as @e[type=block_display,tag=sentry,tag=` + WandData.Sentry.Namespace + `] run block add_sentry_slowness{\n`);
        DataArray.push(`execute at @s run execute as @e[distance=..` + WandData.Sentry.Distance + `] run block apply_slowness{\n`);
        DataArray.push(`effect give @s minecraft:slowness 1 0 true\n`);
        DataArray.push(`}\n`);
        DataArray.push(`}\n`);

        DataArray.push(`}\n`);

        // I: Effects
        DataArray.push(`clock sentry_effects 10t{\n`);

        let DistanceCorner = WandData.Sentry.Distance * 0.707;

        DataArray.push(`execute as @e[type=block_display,tag=sentry,tag=` + WandData.Sentry.Namespace + `] run block apply_sentry_effects{\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^` + WandData.Sentry.Distance+ ` ^ ^0 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^` + DistanceCorner + ` ^ ^` + DistanceCorner + ` 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^0 ^ ^` + WandData.Sentry.Distance+ ` 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^-` + DistanceCorner + ` ^ ^` + DistanceCorner + ` 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^-` + WandData.Sentry.Distance+ ` ^ ^0 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^-` + DistanceCorner + ` ^ ^-` + DistanceCorner + ` 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^0 ^ ^-` + WandData.Sentry.Distance+ ` 0 0 0 0 1 normal\n`);
        DataArray.push(`execute as @s at @s run particle dust{color:[` + WandData.Sentry.DustColor + `],scale:2} ^` + DistanceCorner + ` ^ ^-` + DistanceCorner + ` 0 0 0 0 1 normal\n`);
        DataArray.push(`}\n`);

        DataArray.push(`}\n`);

        // I: hit block
        DataArray.push(`function hit_block{\n`);
        DataArray.push(`function ./summon_sentry\n`);
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