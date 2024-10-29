-- Create main settings frame
local settingsFrame = CreateFrame("Frame", "IcyBISSettings", UIParent, "BasicFrameTemplate")
settingsFrame:SetSize(800, 400)
settingsFrame:SetPoint("CENTER", 0, 150)
settingsFrame:SetMovable(true)
settingsFrame:EnableMouse(true)
settingsFrame:SetFrameStrata("DIALOG")
settingsFrame:Hide()

--#region Allow the settings frame to be moved around the screen.
settingsFrame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

settingsFrame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)
--#endregion

-- Frame title
local title = settingsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightMed2")
title:SetPoint("TOPLEFT", settingsFrame, 20, -5)
title:SetText("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Settings")

local version = settingsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightMed2")
version:SetPoint("TOPRIGHT", settingsFrame, -35, -5)
version:SetText("v1.0.3") --TODO

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

-- List of WoW class names and their internal identifiers
local classNames = {
    { name = "Death Knight", id = "DEATHKNIGHT" },
    { name = "Demon Hunter", id = "DEMONHUNTER" },
    { name = "Druid",        id = "DRUID" },
    { name = "Evoker",       id = "EVOKER" },
    { name = "Hunter",       id = "HUNTER" },
    { name = "Mage",         id = "MAGE" },
    { name = "Monk",         id = "MONK" },
    { name = "Paladin",      id = "PALADIN" },
    { name = "Priest",       id = "PRIEST" },
    { name = "Rogue",        id = "ROGUE" },
    { name = "Shaman",       id = "SHAMAN" },
    { name = "Warlock",      id = "WARLOCK" },
    { name = "Warrior",      id = "WARRIOR" }
}
table.sort(classNames, function(a, b) return a.name < b.name end) -- Sort alphabetically by name

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

-- Title for selected class display (define this before using in function)
local selectedClassTitle = rightSection:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
selectedClassTitle:SetPoint("TOP", rightSection, 0, -10)
selectedClassTitle:SetFont("Fonts\\FRIZQT__.TTF", 24, "OUTLINE")

-- Function to update class title with class-specific color
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

-- Create clickable class buttons in the navigation bar
for i, classInfo in ipairs(classNames) do
    local classButton = CreateFrame("Button", nil, navBar, "UIPanelButtonTemplate")
    classButton:SetSize(navBar:GetWidth() - 10, 20)
    classButton:SetPoint("TOPLEFT", navBar, "TOPLEFT", 5, -8 - (i - 1) * 27)
    classButton:SetText(classInfo.name)
    classButton:SetScript("OnClick", function(self)
        updateClassTitle(classInfo.name, classInfo.id)
    end)
end

--#region Spec Label creation function
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

--#region IcyBIS table checkbox creation function
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

    -- loadCheckboxSetting(checkbox, checkboxSettingName)
    -- checkbox:SetScript("OnClick", function(self)
    --     onCheckboxClick(self, checkboxSettingName)
    -- end)

    -- Return the check button
    return checkbox
end
--#endregion

-- Automatically select and display the player's class when the frame is shown
settingsFrame:SetScript("OnShow", function()
    local _, playerClassName = UnitClass("player")       -- Get player's class name in English
    local playerClassId = select(2, UnitClass("player")) -- Get player's class ID (e.g., "MAGE")

    -- Find the matching class name from classNames
    for _, classInfo in ipairs(classNames) do
        if classInfo.id == playerClassId then
            updateClassTitle(classInfo.name, classInfo.id)
            break
        end
    end
end)


local icyBISTableNames = { "Overall BIS:", "Raid BIS:", "M+ BIS:" }
local _, name, _, icon, _, _ = GetSpecializationInfo(1)
local spec1 = createSpecHeader(name, rightSection, "TOPLEFT", 50, -70, icon)
local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 65, -100, "Spec 1 Overall BIS")
local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

_, name, _, icon, _, _ = GetSpecializationInfo(2)
local spec2 = createSpecHeader(name, rightSection, "TOPLEFT", 250, -70, icon)
local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 265, -100,
    "Spec 2 Overall BIS")
local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")

_, name, _, icon, _, _ = GetSpecializationInfo(3)
local spec3 = createSpecHeader(name, rightSection, "TOPLEFT", 450, -70, icon)
local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], rightSection, "TOPLEFT", 465, -100,
    "Spec 3 Overall BIS")
local sepc3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30, "Spec 3 Raid BIS")
createBISTableCheckbox(icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30, "Spec 3 M+ BIS")

settingsFrame:Show()
