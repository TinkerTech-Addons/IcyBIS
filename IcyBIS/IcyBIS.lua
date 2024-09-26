-- IcyBIS.lua
-- Hands the main functionality of the IcyBIS WoW Addon.

-- #region Create locally and globaly used variables
local addonName, ns = ...
ns = ns or {}
ns.addonVersion = C_AddOns.GetAddOnMetadata(addonName, "Version")
ns.buildDate = C_AddOns.GetAddOnMetadata(addonName, "X-BuildDate")

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
    if event == "PLAYER_ENTERING_WORLD" then
        ns.OnInitialize()
        ns.loadItemLists()
    end

    if event == "ADDON_LOADED" and addonName == "IcyBIS" then
        print("|cFF38CBFEIcy|r|cFFFF8F00BIS|r")
        print("Version: " .. ns.addonVersion)
        print("Build Date: " .. ns.buildDate)
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnBISTooltip)

        self:UnregisterEvent("ADDON_LOADED")
    end

    if IsInInstance() then
        OnLootReadyEvent()
    end
end
-- #endregion

-- #region Event driver
local frame = CreateFrame("Frame", "IcyBIS")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", OnAddonLoaded)
-- #endregion
