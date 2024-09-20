-- IcyBIS.lua
-- Hands the main functionality of the IcyBIS WoW Addon.

-- #region Create locally and globaly used variables
local addonName, ns = ...
ns = ns or {}
ns.addonVersion = C_AddOns.GetAddOnMetadata("IcyBIS", "Version")

-- Table to hold character-specific settings
IcyBIS_Settings = IcyBIS_Settings or {}

-- #endregion

-- #region Local IcyBIS functions
local function SlashCommandHandler(message)
    if message == "v" or message == "version" then
        print("Addon Name: " .. addonName)
        print("      Version: " .. ns.addonVersion)
    elseif message == "show" then
        ns.ShowSettingsFrame()
    else
        print("IcyBIS Usage:")
        print("  /icybis show      - Open the settings")
        print("  /icybis v|version - Print out the addon name and current version")
    end
end

-- #region Register the slash command
SLASH_ICYBIS1 = "/icybis"
SlashCmdList["ICYBIS"] = SlashCommandHandler

-- #endregion

local function OnAddonLoaded(self, event)
    if addonName == "IcyBIS" then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnBISTooltip)
        OnLootReadyEvent(event)

        self:UnregisterEvent("ADDON_LOADED")
    end
end
-- #endregion

-- #region Event driver
local frame = CreateFrame("Frame", "IcyBIS")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("ONEVENT", OnAddonLoaded)
-- #endregion
