-- Functions.lua

-- Load the item lists from their individual files
local function loadItemLists()
    IcyBIS_TrackedItems = {
        ELEMENTAL_SHAMAN_OVERALL_BIS,
        RESTORATION_SHAMAN_OVERALL_BIS,
        ENHANCEMENT_SHAMAN_OVERALL_BIS,
        -- ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS,
    }
    table.insert(IcyBIS_TrackedItems, ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS)
end

-- Call the function to load all item lists into the main table
loadItemLists()
