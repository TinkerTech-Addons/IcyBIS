-- Functions.lua

-- Load the item lists from their individual files
local function loadItemLists()
    local localizedClass = UnitClass("player")
    IcyBIS_TrackedItems = {}

    if localizedClass == "Warrior" then
        table.insert(IcyBIS_TrackedItems, ARMS_WARRIOR_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, ARMS_WARRIOR_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, ARMS_WARRIOR_MYTHIC_PLUS_BIS)

        table.insert(IcyBIS_TrackedItems, FURY_WARRIOR_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, FURY_WARRIOR_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, FURY_WARRIOR_MYTHIC_PLUS_BIS)

        table.insert(IcyBIS_TrackedItems, PROTECTION_WARRIOR_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, PROTECTION_WARRIOR_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, PROTECTION_WARRIOR_MYTHIC_PLUS_BIS)
    end

    if localizedClass == "Shaman" then
        table.insert(IcyBIS_TrackedItems, ELEMENTAL_SHAMAN_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, ELEMENTAL_SHAMAN_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS)

        table.insert(IcyBIS_TrackedItems, ENHANCEMENT_SHAMAN_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, ENHANCEMENT_SHAMAN_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, ENHANCEMENT_SHAMAN_MYTHIC_PLUS_BIS)

        table.insert(IcyBIS_TrackedItems, RESTORATION_SHAMAN_OVERALL_BIS)
        table.insert(IcyBIS_TrackedItems, RESTORATION_SHAMAN_RAID_BIS)
        table.insert(IcyBIS_TrackedItems, RESTORATION_SHAMAN_MYTHIC_PLUS_BIS)
    end
end

-- Call the function to load all item lists into the main table
loadItemLists()
