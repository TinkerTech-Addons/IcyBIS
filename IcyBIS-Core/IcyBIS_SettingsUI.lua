-- IcyBIS_SettingsUI.lua
-- Handles the creation and functionality of the settings UI.

-- #region Create locally and globally used variables
local addonName, ns = ...

if not IcyBIS_Settings then
    IcyBIS_Settings = {}
end
--#endregion

--#region Create and configure the settings frame
local settingsFrame = CreateFrame("Frame", "IcyBISSettings", UIParent, "BasicFrameTemplate")
settingsFrame:SetSize(800, 400)
settingsFrame:SetPoint("CENTER", 0, 150)
settingsFrame:SetMovable(true)
settingsFrame:EnableMouse(true)
settingsFrame:SetFrameStrata("DIALOG")
settingsFrame:Hide()

-- Create and configure the settings frame title text
local title = settingsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightMed2")
title:SetPoint("TOPLEFT", settingsFrame, 20, -5)
title:SetText("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Settings")

-- Create and configure the settings frame version text
local version = settingsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightMed2")
version:SetPoint("TOPRIGHT", settingsFrame, -35, -5)
version:SetText(ns.addonVersion) --TODO - check

-- Create left-side navigation bar for classes
local navBar = CreateFrame("Frame", nil, settingsFrame, "BackdropTemplate")
navBar:SetSize(120, settingsFrame:GetHeight() - 40)
navBar:SetPoint("TOPLEFT", settingsFrame, "TOPLEFT", 10, -30)
navBar:SetBackdrop({
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    tile = true,
    tileSize = 16,
    edgeSize = 12,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
navBar:SetBackdropColor(0, 0, 0, 0.8)
--#endregion

--#region List of WoW class names and their internal identifiers
local classNames = {
    { name = "Death Knight", id = "DEATHKNIGHT", uid = 6 },
    { name = "Demon Hunter", id = "DEMONHUNTER", uid = 12 },
    { name = "Druid",        id = "DRUID",       uid = 11 },
    { name = "Evoker",       id = "EVOKER",      uid = 13 },
    { name = "Hunter",       id = "HUNTER",      uid = 3 },
    { name = "Mage",         id = "MAGE",        uid = 8 },
    { name = "Monk",         id = "MONK",        uid = 10 },
    { name = "Paladin",      id = "PALADIN",     uid = 2 },
    { name = "Priest",       id = "PRIEST",      uid = 5 },
    { name = "Rogue",        id = "ROGUE",       uid = 4 },
    { name = "Shaman",       id = "SHAMAN",      uid = 7 },
    { name = "Warlock",      id = "WARLOCK",     uid = 9 },
    { name = "Warrior",      id = "WARRIOR",     uid = 1 }
}
--#endregion

--#region Local function to create right section of the settings UI.
local function createRightSection()
    -- Create right section for displaying selected class information
    local rightSection = CreateFrame("Frame", nil, settingsFrame, "BackdropTemplate")
    rightSection:SetSize(settingsFrame:GetWidth() - navBar:GetWidth() - 30, navBar:GetHeight())
    rightSection:SetPoint("TOPLEFT", navBar, "TOPRIGHT", 10, 0)
    rightSection:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 12,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    rightSection:SetBackdropColor(0, 0, 0, 0.8)
    return rightSection
end
--#endregion

-- Initialize local rightSection of the settingsFrame
local rightSection = createRightSection()

--#region Local function to dynamically create the selected class title text within the right section
local function createSelectedClassTitle()
    -- Title for selected class display (define this before using in function)
    local selectedClassTitle = rightSection:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    selectedClassTitle:SetPoint("TOP", rightSection, 0, -10)
    selectedClassTitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")
    return selectedClassTitle
end
--#endregion

-- Initialize local selectedClassTitle on the settingsFrame rightSection
local selectedClassTitle = createSelectedClassTitle()

--#region Local function to update selected class title with class-specific color
local function updateClassTitle(className, classId)
    -- Get class color based on internal identifier
    local classColor = RAID_CLASS_COLORS[classId]
    if classColor then
        local colorCode = string.format("|cff%02x%02x%02x", classColor.r * 255, classColor.g * 255, classColor.b * 255)
        selectedClassTitle:SetText(colorCode .. className .. "|r")
    else
        selectedClassTitle:SetText(className) -- Default to no color if classColor is not found
    end
end
--#endregion

--#region Local function to dynamically create spec label and images
local function createSpecHeader(name, parent, anchorPoint, x, y, icon)
    local specImage = parent:CreateTexture(name .. "Image", "ARTWORK")
    specImage:SetSize(24, 24)
    specImage:SetPoint(anchorPoint, x, y)
    specImage:SetTexture(icon)

    local specImageLabel = rightSection:CreateFontString("specImageLabel", "OVERLAY", "GameFontHighlightLarge2")
    specImageLabel:SetText(name)
    specImageLabel:SetPoint(anchorPoint, x + 32, y - 5)
end
--#endregion

--#region Local function to load character specific saved settings for checkboxes
local function loadCheckboxSetting(checkbox, settingName)
    if IcyBIS_Settings[settingName] == nil then
        IcyBIS_Settings[settingName] = false
    end
    checkbox:SetChecked(IcyBIS_Settings[settingName])
end
--#endregion

--#region Local function to load corresponding BIS gear sets from selected checkboxes
local function onCheckboxClick(self, checkboxSettingName)
    local settingName = checkboxSettingName
    IcyBIS_Settings[settingName] = self:GetChecked()
    ns.loadItemLists()
end
--#endregion

--#region Local function to create IcyBIS spec checkboxes
local function createBISTableCheckbox(name, parent, anchorPoint, x, y, checkboxSettingName)
    -- Create and position check button frame
    local checkbox = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
    checkbox:SetPoint(anchorPoint, x, y)

    -- Create and position check button label
    local checkboxLabel = checkbox:CreateFontString("checkboxLabel", "HIGHLIGHT", "GameFontHighlightMed2")
    checkboxLabel:SetText(name)
    checkboxLabel:SetPoint("LEFT", 35, 0)

    -- Set the check button label
    checkbox:SetFontString(checkboxLabel)

    loadCheckboxSetting(checkbox, checkboxSettingName)
    checkbox:SetScript("OnClick", function(self)
        onCheckboxClick(self, checkboxSettingName)
    end)

    -- Return the check button
    return checkbox
end
--#endregion

--#region Local function that dynamically generates the selected classes specs, icons, and BIS table checkboxes
local function generateClassOptions(classID, className)
    local icyBISTableNames = { "Overall BIS:", "Raid BIS:", "M+ BIS:" }
    local numSpecializations = GetNumSpecializationsForClassID(classID)

    local _, name, _, icon, _, _ = GetSpecializationInfoForClassID(classID, 1)
    local spec1 = createSpecHeader(name, rightSection, "TOPLEFT", 50, -70, icon)
    local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 65, -100,
        className .. " Spec 1 Overall BIS")
    local spec1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30,
        className .. " Spec 1 Raid BIS")
    local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec1_raid, "LEFT", 0, -30,
        className .. " Spec 1 M+ BIS")

    _, name, _, icon, _, _ = GetSpecializationInfoForClassID(classID, 2)
    local spec2 = createSpecHeader(name, rightSection, "TOPLEFT", 250, -70, icon)
    local spec2_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 265, -100,
        className .. " Spec 2 Overall BIS")
    local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_overall, "LEFT", 0, -30,
        className .. " Spec 2 Raid BIS")
    local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30,
        className .. " Spec 2 M+ BIS")

    if numSpecializations == 2 then
        settingsFrame:SetSize(600, 400)
        rightSection:SetSize(settingsFrame:GetWidth() - navBar:GetWidth() - 30, navBar:GetHeight())
    elseif numSpecializations == 4 then
        settingsFrame:SetSize(1000, 400)
        rightSection:SetSize(settingsFrame:GetWidth() - navBar:GetWidth() - 30, navBar:GetHeight())

        _, name, _, icon, _, _ = GetSpecializationInfoForClassID(classID, 3)
        local spec3 = createSpecHeader(name, rightSection, "TOPLEFT", 450, -70, icon)
        local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 465, -100,
            className .. " Spec 3 Overall BIS")
        local spec3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30,
            className .. " Spec 3 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], spec3_raid, "LEFT", 0, -30, className .. " Spec 3 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfoForClassID(classID, 4)
        local spec4 = createSpecHeader(name, rightSection, "TOPLEFT", 650, -70, icon)
        local spec4_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 665, -100,
            className .. " Spec 4 Overall BIS")
        local spec4_raid = createBISTableCheckbox(icyBISTableNames[2], spec4_overall, "LEFT", 0, -30,
            className .. " Spec 4 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], spec4_raid, "LEFT", 0, -30, className .. " Spec 4 M+ BIS")
    else
        settingsFrame:SetSize(800, 400)
        rightSection:SetSize(settingsFrame:GetWidth() - navBar:GetWidth() - 30, navBar:GetHeight())

        _, name, _, icon, _, _ = GetSpecializationInfoForClassID(classID, 3)
        local spec3 = createSpecHeader(name, rightSection, "TOPLEFT", 450, -70, icon)
        local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 465, -100,
            className .. " Spec 3 Overall BIS")
        local spec3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30,
            className .. " Spec 3 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], spec3_raid, "LEFT", 0, -30, className .. " Spec 3 M+ BIS")
    end
    createBISTableCheckbox("Party Mode", rightSection, "TOP", -75, -250, "party mode checkbox")
end
--#endregion

--#region Namespace function that will "initialize" the addon and is run when the player enters with world
function ns.OnInitialize()
    -- Create clickable class buttons in the navigation bar
    for i, classInfo in ipairs(classNames) do
        local classButton = CreateFrame("Button", nil, navBar, "UIPanelButtonTemplate")
        classButton:SetSize(navBar:GetWidth() - 10, 20)
        classButton:SetPoint("TOPLEFT", navBar, "TOPLEFT", 5, -8 - (i - 1) * 27)
        classButton:SetText(classInfo.name)
        classButton:SetScript("OnClick", function(self)
            rightSection:Hide()
            rightSection = createRightSection()
            selectedClassTitle = createSelectedClassTitle()
            updateClassTitle(classInfo.name, classInfo.id)
            generateClassOptions(classInfo.uid, classInfo.name)
        end)
    end
end

--#endregion

--#region settingFrame specific scripts
-- Allows the settingsFrame to be moved around
settingsFrame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

-- Stops the settingsFrame from moving around
settingsFrame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)

-- Automatically select and display the player's class when the frame is shown
settingsFrame:SetScript("OnShow", function()
    local _, playerClassName = UnitClass("player")       -- Get player's class name in English
    local playerClassId = select(2, UnitClass("player")) -- Get player's class ID (e.g., "MAGE")

    -- Find the matching class name from classNames
    for _, classInfo in ipairs(classNames) do
        if classInfo.id == playerClassId then
            rightSection:Hide()
            rightSection = createRightSection()
            selectedClassTitle = createSelectedClassTitle()
            updateClassTitle(classInfo.name, classInfo.id)
            generateClassOptions(classInfo.uid, classInfo.name)
            break
        end
    end
end)
--#endregion

--#region Namespace function to show the settingsFrame, used with slash command and addon container
function ns.ShowSettingsFrame()
    settingsFrame:Show()
end

--#endregion
