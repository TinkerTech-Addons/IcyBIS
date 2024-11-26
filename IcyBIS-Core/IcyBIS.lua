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
        print("   Version: " .. ns.addonVersion)
        print("Build Date: " .. ns.buildDate)
    elseif message == "show" then
        ns.ShowSettingsFrame()
    else
        print("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Usage:")
        print("  /|cFF38CBFEicy|r|cFFFF8F00bis|r |cFF14cd33show|r      - Open the settings")
        print("  /|cFF38CBFEicy|r|cFFFF8F00bis|r |cFF14cd33v|version|r - Print out the addon name and current version")
    end
end
--#endregion

-- #region Register the slash command
SLASH_ICYBIS1 = "/icybis"
SlashCmdList["ICYBIS"] = SlashCommandHandler
-- #endregion

--#region Local function for important messages
local function ImportantMessage(message)
    C_Timer.After(20, function()
        print("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Notification")
        print("|cFFFF0000IMPORTANT:|r " .. message)
    end)
end

--#region Addon event handler
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

    if event == "PLAYER_LOGIN" then
        ImportantMessage(
            "|cFF38CBFEIcy|r|cFFFF8F00BIS|r table settings have been reset. You will need to re-select all class and specs to track."
        )
    end
end
-- #endregion

-- #region Event driver
local frame = CreateFrame("Frame", "IcyBIS")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", OnAddonLoaded)
-- #endregion
