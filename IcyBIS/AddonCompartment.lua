local addonName, ns = ...

function IcyBIS_OnAddonCompartmentClick()
    print("Clicked addon compartment button")
    ns.ShowSettingsFrame()
end

function IcyBIS_OnAddonCompartmentEnter()
    GameTooltip:SetOwner(AddonCompartmentFrame, "ANCHOR_BOTTOMLEFT")
    -- GameTooltip:SetText("IcyBIS", 1, 1, 1, true)
    GameTooltip:AddDoubleLine("IcyBIS", "Version: " .. ns.addonVersion, 1, 0.8, 0, 1, 0.8, 0)
    GameTooltip:AddLine(" ")
    GameTooltip:AddLine("Left-Click to toggle settings")
    GameTooltip:AddLine("Extra")
    GameTooltip:AddLine("Extra2")
    GameTooltip:Show()
end

function IcyBIS_OnAddonCompartmentLeave()
    GameTooltip:Hide()
end