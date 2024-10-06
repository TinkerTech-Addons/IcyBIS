local addonName, ns = ...

function IcyBIS_OnAddonCompartmentClick()
    ns.ShowSettingsFrame()
end

function IcyBIS_OnAddonCompartmentEnter()
    GameTooltip:SetOwner(AddonCompartmentFrame, "ANCHOR_BOTTOMLEFT")
    GameTooltip:AddDoubleLine("|cFF38CBFEIcy|r|cFFFF8F00BIS|r", "Version: " .. ns.addonVersion, 1, 0.8, 0, 1, 0.8, 0)
    GameTooltip:AddLine(" ")
    GameTooltip:AddLine("Left-Click to toggle settings")
    -- GameTooltip:AddLine("Extra")
    -- GameTooltip:AddLine("Extra2")
    GameTooltip:Show()
end

function IcyBIS_OnAddonCompartmentLeave()
    GameTooltip:Hide()
end
