-- Functions.lua

-- Load the item lists from their individual files
local function loadItemLists()
    MyFirstAddon_TrackedItems = {
        raidItems = MyFirstAddon_RaidItems,       -- Load raid items
        dungeonItems = MyFirstAddon_DungeonItems, -- Load dungeon items
        worldItems = MyFirstAddon_WorldItems,     -- Load world items
    }
end

-- Call the function to load all item lists into the main table
loadItemLists()
