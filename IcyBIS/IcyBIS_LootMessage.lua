-- SendChatMessage("", "INSTANCE_CHAT")
-- "LOOT_READY"

-- Tooltip to display players class and selected spec BIS. Toggle on/off class color

-- Create message stating that is players BIS if BIS item drops from content

function OnLootReadyEvent(event)
    local inInstance = IsInInstance()
    if event == "LOOT_READY" and inInstance then
        local numItems = GetNumLootItems()
        for i = 1, numItems do
            local itemLink = GetLootSlotLink(i) -- Get item link
            if itemLink then
                local loot_itemID = tonumber(itemLink:match("item:(%d+):"))
                for _, items_table in ipairs(IcyBIS_TrackedItems) do
                    for _, bis_itemID in ipairs(items_table.itemIDs) do
                        if bis_itemID == itemID then
                            SendChatMessage("BIS Item Dropped", "INSTANCE_CHAT")
                        end
                    end
                end
            end
        end
    end
end
