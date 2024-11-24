-- IcyBIS_Tooltip.lua
-- Handles adding best in slot information on gear tooltips.

-- #region BIS Tooltip
function OnBISTooltip(tooltip, data)
    if tooltip == GameTooltip then
        tooltip:AddLine(" ")
        for _, items_table in ipairs(IcyBIS_TrackedItems) do
            for _, bis_itemID in ipairs(items_table.itemIDs) do
                if data.lines[1].leftText == C_Item.GetItemInfo(bis_itemID) then
                    local classColor = RAID_CLASS_COLORS[items_table.classID]
                    tooltip:AddDoubleLine(items_table.messageLeft, items_table.messageRight, 1.0, 0.82, 0.0,
                        classColor.r, classColor.g, classColor.b)
                end
            end
        end
    end
end
-- #endregion
