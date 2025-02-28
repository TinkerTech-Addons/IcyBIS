-- Functions.lua
local addonName, ns = ...

local function buildTrackedItems(className, spec, overallBISTable, raidBISTable, mythicPlusBISTable)
    if IcyBIS_Settings[className .. " Spec " .. spec .. " Overall BIS"] then
        table.insert(IcyBIS_TrackedItems, overallBISTable)
    end

    if IcyBIS_Settings[className .. " Spec " .. spec .. " Raid BIS"] then
        table.insert(IcyBIS_TrackedItems, raidBISTable)
    end

    if IcyBIS_Settings[className .. " Spec " .. spec .. " M+ BIS"] then
        table.insert(IcyBIS_TrackedItems, mythicPlusBISTable)
    end
end

function ns.loadItemLists()
    IcyBIS_TrackedItems = {}

    buildTrackedItems("Death Knight", 1, BLOOD_DEATH_KNIGHT_OVERALL_BIS, BLOOD_DEATH_KNIGHT_RAID_BIS,
        BLOOD_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
    buildTrackedItems("Death Knight", 2, FROST_DEATH_KNIGHT_OVERALL_BIS, FROST_DEATH_KNIGHT_RAID_BIS,
        FROST_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
    buildTrackedItems("Death Knight", 3, UNHOLY_DEATH_KNIGHT_OVERALL_BIS, UNHOLY_DEATH_KNIGHT_RAID_BIS,
        UNHOLY_DEATH_KNIGHT_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Demon Hunter", 1, HAVOC_DEMON_HUNTER_OVERALL_BIS, HAVOC_DEMON_HUNTER_RAID_BIS,
        HAVOC_DEMON_HUNTER_MYTHIC_PLUS_BIS)
    buildTrackedItems("Demon Hunter", 2, VENGEANCE_DEMON_HUNTER_OVERALL_BIS, VENGEANCE_DEMON_HUNTER_RAID_BIS,
        VENGEANCE_DEMON_HUNTER_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Druid", 1, BALANCE_DRUID_OVERALL_BIS, BALANCE_DRUID_RAID_BIS, BALANCE_DRUID_MYTHIC_PLUS_BIS)
    buildTrackedItems("Druid", 2, FERAL_DRUID_OVERALL_BIS, FERAL_DRUID_RAID_BIS, FERAL_DRUID_MYTHIC_PLUS_BIS)
    buildTrackedItems("Druid", 3, GUARDIAN_DRUID_OVERALL_BIS, GUARDIAN_DRUID_RAID_BIS, GUARDIAN_DRUID_MYTHIC_PLUS_BIS)
    buildTrackedItems("Druid", 4, RESTORATION_DRUID_OVERALL_BIS, RESTORATION_DRUID_RAID_BIS,
        RESTORATION_DRUID_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Evoker", 1, DEVASTATION_EVOKER_OVERALL_BIS, DEVASTATION_EVOKER_RAID_BIS,
        DEVASTATION_EVOKER_MYTHIC_PLUS_BIS)
    buildTrackedItems("Evoker", 2, PRESERVATION_EVOKER_OVERALL_BIS, PRESERVATION_EVOKER_RAID_BIS,
        PRESERVATION_EVOKER_MYTHIC_PLUS_BIS)
    buildTrackedItems("Evoker", 3, AUGMENTATION_EVOKER_OVERALL_BIS, AUGMENTATION_EVOKER_RAID_BIS,
        AUGMENTATION_EVOKER_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Hunter", 1, BEAST_MASTERY_HUNTER_OVERALL_BIS, BEAST_MASTERY_HUNTER_RAID_BIS,
        BEAST_MASTERY_HUNTER_MYTHIC_PLUS_BIS)
    buildTrackedItems("Hunter", 2, MARKSMANSHIP_HUNTER_OVERALL_BIS, MARKSMANSHIP_HUNTER_RAID_BIS,
        MARKSMANSHIP_HUNTER_MYTHIC_PLUS_BIS)
    buildTrackedItems("Hunter", 3, SURVIVAL_HUNTER_OVERALL_BIS, SURVIVAL_HUNTER_RAID_BIS, SURVIVAL_HUNTER_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Mage", 1, ARCANE_MAGE_OVERALL_BIS, ARCANE_MAGE_RAID_BIS, ARCANE_MAGE_MYTHIC_PLUS_BIS)
    buildTrackedItems("Mage", 2, FIRE_MAGE_OVERALL_BIS, FIRE_MAGE_RAID_BIS, FIRE_MAGE_MYTHIC_PLUS_BIS)
    buildTrackedItems("Mage", 3, FROST_MAGE_OVERALL_BIS, FROST_MAGE_RAID_BIS, FROST_MAGE_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Monk", 1, BREWMASTER_MONK_OVERALL_BIS, BREWMASTER_MONK_RAID_BIS, BREWMASTER_MONK_MYTHIC_PLUS_BIS)
    buildTrackedItems("Monk", 2, MISTWEAVER_MONK_OVERALL_BIS, MISTWEAVER_MONK_RAID_BIS, MISTWEAVER_MONK_MYTHIC_PLUS_BIS)
    buildTrackedItems("Monk", 3, WINDWALKER_MONK_OVERALL_BIS, WINDWALKER_MONK_RAID_BIS, WINDWALKER_MONK_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Paladin", 1, HOLY_PALADIN_OVERALL_BIS, HOLY_PALADIN_RAID_BIS, HOLY_PALADIN_MYTHIC_PLUS_BIS)
    buildTrackedItems("Paladin", 2, PROTECTION_PALADIN_OVERALL_BIS, PROTECTION_PALADIN_RAID_BIS,
        PROTECTION_PALADIN_MYTHIC_PLUS_BIS)
    buildTrackedItems("Paladin", 3, RETRIBUTION_PALADIN_OVERALL_BIS, RETRIBUTION_PALADIN_RAID_BIS,
        RETRIBUTION_PALADIN_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Priest", 1, DISCIPLINE_PRIEST_OVERALL_BIS, DISCIPLINE_PRIEST_RAID_BIS,
        DISCIPLINE_PRIEST_MYTHIC_PLUS_BIS)
    buildTrackedItems("Priest", 2, HOLY_PRIEST_OVERALL_BIS, HOLY_PRIEST_RAID_BIS, HOLY_PRIEST_MYTHIC_PLUS_BIS)
    buildTrackedItems("Priest", 3, SHADOW_PRIEST_OVERALL_BIS, SHADOW_PRIEST_RAID_BIS, SHADOW_PRIEST_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Rogue", 1, ASSASSINATION_ROGUE_OVERALL_BIS, ASSASSINATION_ROGUE_RAID_BIS,
        ASSASSINATION_ROGUE_MYTHIC_PLUS_BIS)
    buildTrackedItems("Rogue", 2, OUTLAW_ROGUE_OVERALL_BIS, OUTLAW_ROGUE_RAID_BIS, OUTLAW_ROGUE_MYTHIC_PLUS_BIS)
    buildTrackedItems("Rogue", 3, SUBTLETY_ROGUE_OVERALL_BIS, SUBTLETY_ROGUE_RAID_BIS, SUBTLETY_ROGUE_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Shaman", 1, ELEMENTAL_SHAMAN_OVERALL_BIS, ELEMENTAL_SHAMAN_RAID_BIS,
        ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS)
    buildTrackedItems("Shaman", 2, ENHANCEMENT_SHAMAN_OVERALL_BIS, ENHANCEMENT_SHAMAN_RAID_BIS,
        ENHANCEMENT_SHAMAN_MYTHIC_PLUS_BIS)
    buildTrackedItems("Shaman", 3, RESTORATION_SHAMAN_OVERALL_BIS, RESTORATION_SHAMAN_RAID_BIS,
        RESTORATION_SHAMAN_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Warlock", 1, AFFLICTION_WARLOCK_OVERALL_BIS, AFFLICTION_WARLOCK_RAID_BIS,
        AFFLICTION_WARLOCK_MYTHIC_PLUS_BIS)
    buildTrackedItems("Warlock", 2, DEMONOLOGY_WARLOCK_OVERALL_BIS, DEMONOLOGY_WARLOCK_RAID_BIS,
        DEMONOLOGY_WARLOCK_MYTHIC_PLUS_BIS)
    buildTrackedItems("Warlock", 3, DESTRUCTION_WARLOCK_OVERALL_BIS, DESTRUCTION_WARLOCK_RAID_BIS,
        DESTRUCTION_WARLOCK_MYTHIC_PLUS_BIS)
    ---
    buildTrackedItems("Warrior", 1, ARMS_WARRIOR_OVERALL_BIS, ARMS_WARRIOR_RAID_BIS, ARMS_WARRIOR_MYTHIC_PLUS_BIS)
    buildTrackedItems("Warrior", 2, FURY_WARRIOR_OVERALL_BIS, FURY_WARRIOR_RAID_BIS, FURY_WARRIOR_MYTHIC_PLUS_BIS)
    buildTrackedItems("Warrior", 3, PROTECTION_WARRIOR_OVERALL_BIS, PROTECTION_WARRIOR_RAID_BIS,
        PROTECTION_WARRIOR_MYTHIC_PLUS_BIS)
end

function ns.fadingToggleMessage(message)
    local fadingFrame = CreateFrame("Frame", nil, UIParent)
    fadingFrame:SetSize(250, 50)
    fadingFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 200)

    local text = fadingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    text:SetPoint("CENTER", fadingFrame, "CENTER")

    local fadeAnim = fadingFrame:CreateAnimationGroup()
    local fade = fadeAnim:CreateAnimation("Alpha")
    fade:SetFromAlpha(1)  -- Start fully visible
    fade:SetToAlpha(0)    -- End fully transparent
    fade:SetDuration(3)   -- 3 seconds fade-out
    fade:SetSmoothing("OUT")  -- Smooth fade-out
    fadeAnim:SetScript("OnFinished", function()
        fadingFrame:Hide()  -- Hide the frame when animation is done
    end)

    -- Play animation
    text:SetText(message)  -- Set text dynamically
    fadingFrame:SetAlpha(1)  -- Ensure it's visible
    fadeAnim:Play()  -- Start fading animation
end
