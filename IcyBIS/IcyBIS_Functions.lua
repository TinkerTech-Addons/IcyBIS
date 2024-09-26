-- Functions.lua

--#region Function to help build correct class and spec tables
local function buildTrackedItems(spec, overallBISTable, raidBISTable, mythicPlusBISTable)
    if IcyBIS_Settings["Spec " .. spec .. " Overall BIS"] then
       table.insert(IcyBIS_TrackedItems, overallBISTable)
    end

    if IcyBIS_Settings["Spec " .. spec .. " Raid BIS"] then
       table.insert(IcyBIS_TrackedItems, raidBISTable)
    end

    if IcyBIS_Settings["Spec " .. spec .. " M+ BIS"] then
       table.insert(IcyBIS_TrackedItems, mythicPlusBISTable)
    end
 end

--#region Load the item lists from their individual files
local function loadItemLists()
    local localizedClass = UnitClass("player")
    IcyBIS_TrackedItems = {}

    if localizedClass == "Death Knight" then
        buildTrackedItems(1, BLOOD_DEATH_KNIGHT_OVERALL_BIS, BLOOD_DEATH_KNIGHT_RAID_BIS, BLOOD_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, FROST_DEATH_KNIGHT_OVERALL_BIS, FROST_DEATH_KNIGHT_RAID_BIS, FROST_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, UNHOLY_DEATH_KNIGHT_OVERALL_BIS, UNHOLY_DEATH_KNIGHT_RAID_BIS, UNHOLY_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Demon Hunter" then
        buildTrackedItems(1, HAVOC_DEMON_HUNTER_OVERALL_BIS, HAVOC_DEMON_HUNTER_RAID_BIS, HAVOC_DEMON_HUNTER_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, VENGEANCE_DEMON_HUNTER_OVERALL_BIS, VENGEANCE_DEMON_HUNTER_RAID_BIS, VENGEANCE_DEMON_HUNTER_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Druid" then
        buildTrackedItems(1, BALANCE_DRUID_OVERALL_BIS, BALANCE_DRUID_RAID_BIS, BALANCE_DRUID_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, FERAL_DRUID_OVERALL_BIS, FERAL_DRUID_RAID_BIS, FERAL_DRUID_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, GUARDIAN_DRUID_OVERALL_BIS, GUARDIAN_DRUID_RAID_BIS, GUARDIAN_DRUID_MYTHIC_PLUS_BIS)
        buildTrackedItems(4, RESTORATION_DRUID_OVERALL_BIS, RESTORATION_DRUID_RAID_BIS, RESTORATION_DRUID_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Evoker" then
        buildTrackedItems(1, AUGMENTATION_EVOKER_OVERALL_BIS, AUGMENTATION_EVOKER_RAID_BIS, AUGMENTATION_EVOKER_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, DEVASTATION_EVOKER_OVERALL_BIS, DEVASTATION_EVOKER_RAID_BIS, DEVASTATION_EVOKER_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, PRESERVATION_EVOKER_OVERALL_BIS, PRESERVATION_EVOKER_RAID_BIS, PRESERVATION_EVOKER_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Hunter" then
        buildTrackedItems(1, BEAST_MASTERY_HUNTER_OVERALL_BIS, BEAST_MASTERY_HUNTER_RAID_BIS, BEAST_MASTERY_HUNTER_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, MARKSMANSHIP_HUNTER_OVERALL_BIS, MARKSMANSHIP_HUNTER_RAID_BIS, MARKSMANSHIP_HUNTER_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, SURVIVAL_HUNTER_OVERALL_BIS, SURVIVAL_HUNTER_RAID_BIS, SURVIVAL_HUNTER_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Mage" then
        buildTrackedItems(1, ARCANE_MAGE_OVERALL_BIS, ARCANE_MAGE_RAID_BIS, ARCANE_MAGE_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, FIRE_MAGE_OVERALL_BIS, FIRE_MAGE_RAID_BIS, FIRE_MAGE_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, FROST_MAGE_OVERALL_BIS, FROST_MAGE_RAID_BIS, FROST_MAGE_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Monk" then
        buildTrackedItems(1, BREWMASTER_MONK_OVERALL_BIS, BREWMASTER_MONK_RAID_BIS, BREWMASTER_MONK_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, MISTWEAVER_MONK_OVERALL_BIS, MISTWEAVER_MONK_RAID_BIS, MISTWEAVER_MONK_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, WINDWALKER_MONK_OVERALL_BIS, WINDWALKER_MONK_RAID_BIS, WINDWALKER_MONK_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Paladin" then
        buildTrackedItems(1, HOLY_PALADIN_OVERALL_BIS, HOLY_PALADIN_RAID_BIS, HOLY_PALADIN_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, PROTECTION_PALADIN_OVERALL_BIS, PROTECTION_PALADIN_RAID_BIS, PROTECTION_PALADIN_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, RETRIBUTION_PALADIN_OVERALL_BIS, RETRIBUTION_PALADIN_RAID_BIS, RETRIBUTION_PALADIN_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Priest" then
        buildTrackedItems(1, DISCIPLINE_PRIEST_OVERALL_BIS, DISCIPLINE_PRIEST_RAID_BIS, DISCIPLINE_PRIEST_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, HOLY_PRIEST_OVERALL_BIS, HOLY_PRIEST_RAID_BIS, HOLY_PRIEST_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, SHADOW_PRIEST_OVERALL_BIS, SHADOW_PRIEST_RAID_BIS, SHADOW_PRIEST_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Rogue" then
        buildTrackedItems(1, ASSASSINATION_ROGUE_OVERALL_BIS, ASSASSINATION_ROGUE_RAID_BIS, ASSASSINATION_ROGUE_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, OUTLAW_ROGUE_OVERALL_BIS, OUTLAW_ROGUE_RAID_BIS, OUTLAW_ROGUE_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, SUBTLETY_ROGUE_OVERALL_BIS, SUBTLETY_ROGUE_RAID_BIS, SUBTLETY_ROGUE_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Shaman" then
        buildTrackedItems(1, ELEMENTAL_SHAMAN_OVERALL_BIS, ELEMENTAL_SHAMAN_RAID_BIS, ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, ENHANCEMENT_SHAMAN_OVERALL_BIS, ENHANCEMENT_SHAMAN_RAID_BIS, ENHANCEMENT_SHAMAN_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, RESTORATION_SHAMAN_OVERALL_BIS, RESTORATION_SHAMAN_RAID_BIS, RESTORATION_SHAMAN_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Warlock" then
        buildTrackedItems(1, AFFLICTION_WARLOCK_OVERALL_BIS, AFFLICTION_WARLOCK_RAID_BIS, AFFLICTION_WARLOCK_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, DEMONOLOGY_WARLOCK_OVERALL_BIS, DEMONOLOGY_WARLOCK_RAID_BIS, DEMONOLOGY_WARLOCK_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, DESTRUCTION_WARLOCK_OVERALL_BIS, DESTRUCTION_WARLOCK_RAID_BIS, DESTRUCTION_WARLOCK_MYTHIC_PLUS_BIS)
    elseif localizedClass == "Warrior" then
        buildTrackedItems(1, ARMS_WARRIOR_OVERALL_BIS, ARMS_WARRIOR_RAID_BIS, ARMS_WARRIOR_MYTHIC_PLUS_BIS)
        buildTrackedItems(2, FURY_WARRIOR_OVERALL_BIS, FURY_WARRIOR_RAID_BIS, FURY_WARRIOR_MYTHIC_PLUS_BIS)
        buildTrackedItems(3, PROTECTION_WARRIOR_OVERALL_BIS, PROTECTION_WARRIOR_RAID_BIS, PROTECTION_WARRIOR_MYTHIC_PLUS_BIS)
    end
end
--#endregion

-- Call the function to load all item lists into the main table
loadItemLists()
