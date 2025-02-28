local addonName, ns = ...

IcyBIS_Settings = IcyBIS_Settings or {}

function IcyBIS_OnAddonCompartmentClick(self, button)
    if button == "LeftButton" then
        ns.ShowSettingsFrame()
    elseif button == "RightButton" then
        IcyBIS_Settings["party mode checkbox"] = not IcyBIS_Settings["party mode checkbox"]
        local party_mode_status
        if IcyBIS_Settings["party mode checkbox"] then
            party_mode_status = "|cFF00FF00Enabled|r"
        else
            party_mode_status = "|cFFFF0000Disabled|r"
        end
        ns.fadingToggleMessage("Party Mode: " .. party_mode_status)
    end
end

function IcyBIS_OnAddonCompartmentEnter()
    GameTooltip:SetOwner(AddonCompartmentFrame, "ANCHOR_BOTTOMLEFT")
    GameTooltip:AddDoubleLine("|cFF38CBFEIcy|r|cFFFF8F00BIS|r", "Version: " .. ns.addonVersion, 1, 0.8, 0, 1, 0.8, 0)
    GameTooltip:AddLine(" ")
    GameTooltip:AddLine("Left-Click to toggle settings")
    GameTooltip:AddLine("Right-Click to toggle party mode")
    local party_mode_status
    if IcyBIS_Settings["party mode checkbox"] then
        party_mode_status = "|cFF00FF00Enabled|r"
    else
        party_mode_status = "|cFFFF0000Disabled|r"
    end
    GameTooltip:AddLine(" ")
    GameTooltip:AddLine("Party Mode: " .. party_mode_status)
    GameTooltip:Show()
end

function IcyBIS_OnAddonCompartmentLeave()
    GameTooltip:Hide()
end
