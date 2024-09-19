-- IcyBIS.lua
-- Hands the main functionality of the IcyBIS WoW Addon.

-- #region Create locally and globaly used variables
local addonName, ns = ...
ns.addonVersion = C_AddOns.GetAddOnMetadata("IcyBIS", "Version")

IcyBIS_Settings = {}
-- #endregion

-- #region Local IcyBIS functions
local function SlashCommandHandler(message)
    if message == "v" or message == "version" then
        print("Addon Name: " .. addonName)
        print("   Version: " .. ns.addonVersion)
    elseif message == "show" then
        InterfaceOptionsFrame_OpenToCategory(settingsFrame)
        InterfaceOptionsFrame_OpenToCategory(settingsFrame) -- Called twice due to a known bug in WoW
    else
        print("IcyBIS Usage:")
        print("  /icybis v|version - Print out the addon name and current version")
    end
end

local function OnAddonLoaded(self, event)
    if addonName == "IcyBIS" then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnBISTooltip)
    end
    self:UnregisterEvent("ADDON_LOADED")
end
-- #endregion

-- #region Register the slash command
SLASH_ICYBIS1 = "/icybis"
SlashCmdList["IcyBIS"] = SlashCommandHandler
-- #endregion

-- #region Event driver
local frame = CreateFrame("Frame", "IcyBIS")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("ONEVENT", OnAddonLoaded)
-- #endregion
