-- itemName = C_Item.GetItemInfo(itemID)
-- C_ClassColor.GetClassColor("SHAMAN")
-- UnitClass("player")
-- GetBuildInfo()
-- SendChatMessage("", "INSTANCE_CHAT")

-- "LOOT_READY"

-- Tooltip to display players class and selected spec BIS. Toggle on/off class color

-- Create message stating that is players BIS if BIS item drops from content

-- Tooltip.lua

-- local addonName, ns = ...

-- BIS Tooltip
function OnBISTooltip(tooltip, data)
    if tooltip == GameTooltip then
        tooltip:AddLine(" ")
        for _, items_table in ipairs(IcyBIS_TrackedItems) do
            for _, value in ipairs(items_table.itemIDs) do
                if data.lines[1].leftText == C_Item.GetItemInfo(value) then
                    tooltip:AddDoubleLine(items_table.messageLeft, items_table.messageRight)
                end
            end
        end
    end
end

-- local function OnAddonLoaded(self, event)
--     if addonName == "IcyBIS" then
--         TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnBISTooltip)
--     end
--     self:UnregisterEvent("ADDON_LOADED")
-- end

-- local frame = CreateFrame("Frame", "IcyBIS")
-- frame:RegisterEvent("ADDON_LOADED")
-- frame:SetScript("ONEVENT", OnAddonLoaded)
