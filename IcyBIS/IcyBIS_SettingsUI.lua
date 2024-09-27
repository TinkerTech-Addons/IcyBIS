-- IcyBIS_SettingsUI.lua

local addonName, ns = ...

if not IcyBIS_Settings then
    IcyBIS_Settings = {}
end

local settingsFrame = CreateFrame("Frame", "IcyBIS Settings", UIParent, "BasicFrameTemplate")
settingsFrame:Hide()
settingsFrame:SetPoint("CENTER", 0, 150)
settingsFrame:SetMovable(true)
settingsFrame:EnableMouse(true)
settingsFrame:Raise()

-- if class has 4 specs, height=650, elseif class has 2 specs, height=375 else hight=500 for normal 3 spec class
if ns.numberOfSpecs == 2 then
    settingsFrame:SetSize(300, 375)
elseif ns.numberOfSpecs == 4 then
    settingsFrame:SetSize(300, 650)
else
    settingsFrame:SetSize(300, 500)
end

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

--#region Create and display the settings frame title.
local title = settingsFrame:CreateFontString("settingsFrameTitle", "OVERLAY", "GameFontHighlightMed2")
title:SetPoint("TOP", settingsFrame, 0, -4)
title:SetText("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Settings")
--#endregion

--#region Create and display the settings frame short description.
local description = settingsFrame:CreateFontString("settingsFrameDescription", "OVERLAY", "GameFontHighlightMed2")
description:SetPoint("TOP", 15, -40)
description:SetSize(250, 0)
description:SetWordWrap(true)
description:SetText("Select specalization(s) and Icy Veins BIS tables to track")
description:SetJustifyH("LEFT")
--#endregion

--#region Function to load saved settings for checkbox
local function loadCheckboxSetting(checkbox, settingName)
    if IcyBIS_Settings[settingName] == nil then
        IcyBIS_Settings[settingName] = false
    end
    checkbox:SetChecked(IcyBIS_Settings[settingName])
end

local function onCheckboxClick(self, checkboxSettingName)
    local settingName = checkboxSettingName
    IcyBIS_Settings[settingName] = self:GetChecked()
    ns.loadItemLists()
end

--#region Spec Label creation function
local function createSpecHeader(name, parent, anchorPoint, x, y, icon)
    local specImage = parent:CreateTexture(name .. "Image", "ARTWORK")
    specImage:SetSize(24, 24)
    specImage:SetPoint(anchorPoint, x, y)
    specImage:SetTexture(icon)

    local specImageLabel = settingsFrame:CreateFontString("specImageLabel", "OVERLAY", "GameFontHighlightLarge2")
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

    loadCheckboxSetting(checkbox, checkboxSettingName)
    checkbox:SetScript("OnClick", function(self)
        onCheckboxClick(self, checkboxSettingName)
    end)

    -- Return the check button
    return checkbox
end
--#endregion

-- TODO: Look into making this work with a loop. **See Below**
function ns.OnInitialize()
    local icyBISTableNames = { "Overall BIS:", "Raid BIS:", "M+ BIS:" }
    if ns.numberOfSpecs == 2 then
        local _, name, _, icon, _, _ = GetSpecializationInfo(1)
        local spec1 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -84, icon)
        local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -114,
            "Spec 1 Overall BIS")
        local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
        local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(2)
        local spec2 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -224, icon)
        local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -258,
            "Spec 2 Overall BIS")
        local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
        local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")
        ----------------------------------------------------------------------------------------------------------------
    elseif ns.numberOfSpecs == 4 then
        local _, name, _, icon, _, _ = GetSpecializationInfo(1)
        local spec1 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -84, icon)
        local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -114,
            "Spec 1 Overall BIS")
        local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
        local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(2)
        local spec2 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -224, icon)
        local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -258,
            "Spec 2 Overall BIS")
        local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
        local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(3)
        local spec3 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -368, icon)
        local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -398,
            "Spec 3 Overall BIS")
        local sepc3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30, "Spec 3 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30, "Spec 3 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(4)
        local spec4 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -508, icon)
        local spec4_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -538,
            "Sec 4 Overall BIS")
        local sepc4_raid = createBISTableCheckbox(icyBISTableNames[2], spec4_overall, "LEFT", 0, -30, "Spec 4 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], sepc4_raid, "LEFT", 0, -30, "Spec 4 M+ BIS")
        ----------------------------------------------------------------------------------------------------------------
    else
        local _, name, _, icon, _, _ = GetSpecializationInfo(1)
        local spec1 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -84, icon)
        local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -114,
            "Spec 1 Overall BIS")
        local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
        local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(2)
        local spec2 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -224, icon)
        local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -258,
            "Spec 2 Overall BIS")
        local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
        local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")

        _, name, _, icon, _, _ = GetSpecializationInfo(3)
        local spec3 = createSpecHeader(name, settingsFrame, "TOPLEFT", 17, -368, icon)
        local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], settingsFrame, "TOPLEFT", 35, -398,
            "Spec 3 Overall BIS")
        local sepc3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30, "Spec 3 Raid BIS")
        createBISTableCheckbox(icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30, "Spec 3 M+ BIS")
    end
end

function ns.ShowSettingsFrame()
    settingsFrame:Show()
end
