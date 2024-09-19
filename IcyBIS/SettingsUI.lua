-- SettingsUI.lua

-- Table to hold character-specific settings
IcyBIS_Settings = IcyBIS_Settings or {}

-- Frame for the settings UI
local settingsFrame = CreateFrame("Frame", "SettingsUIFrame", InterfaceOptionsFramePanelContainer)
settingsFrame.name = "IcyBIS Settings"

-- Function to create a checkbox
local function createCheckbox(name, label, parent, anchorPoint, relativeTo, relativePoint, x, y, tooltip)
    local checkBox = CreateFrame("CheckButton", name, parent, "InterfaceOptionsCheckButtonTemplate")
    checkBox:SetPoint(anchorPoint, relativeTo, relativePoint, x, y)
    _G[checkBox:GetName() .. "Text"]:SetText(label)
    checkBox.tooltipText = tooltip
    return checkBox
end

-- Function to create a category title
local function createCategoryTitle(label, parent, anchorPoint, relativeTo, relativePoint, x, y)
    local title = parent:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint(anchorPoint, relativeTo, relativePoint, x, y)
    title:SetText(label)
    return title
end

-- Spec and BIS settings checkboxes
local function createSpecSettings(specName, parent, yOffset)
    -- Spec title
    local specTitle = createCategoryTitle(specName, parent, "TOPLEFT", parent, "TOPLEFT", 20, yOffset)

    -- Nested BIS checkboxes for the spec
    local overallBISCheckbox = createCheckbox(
        "MyShamanAddon_" .. specName .. "_OverallBIS",
        "Overall BIS",
        parent,
        "TOPLEFT",
        specTitle,
        "BOTTOMLEFT",
        20,
        -10,
        "Enable tracking for Overall BIS items."
    )
    local raidBISCheckbox = createCheckbox(
        "MyShamanAddon_" .. specName .. "_RaidBIS",
        "Raid BIS",
        parent,
        "TOPLEFT",
        overallBISCheckbox,
        "BOTTOMLEFT",
        20,
        -10,
        "Enable tracking for Raid BIS items."
    )
    local mPlusBISCheckbox = createCheckbox(
        "MyShamanAddon_" .. specName .. "_MPlusBIS",
        "M+ BIS",
        parent,
        "TOPLEFT",
        raidBISCheckbox,
        "BOTTOMLEFT",
        20,
        -10,
        "Enable tracking for Mythic+ BIS items."
    )

    -- Return the checkboxes for later reference
    return { overallBISCheckbox, raidBISCheckbox, mPlusBISCheckbox }
end

-- Create checkboxes for each specialization
local elementalCheckboxes = createSpecSettings("Elemental", settingsFrame, -20)
local enhancementCheckboxes = createSpecSettings("Enhancement", settingsFrame, -120)
local restorationCheckboxes = createSpecSettings("Restoration", settingsFrame, -220)

-- Save settings when the options panel is closed
settingsFrame.okay = function()
    -- Save each checkbox state for each spec
    IcyBIS_Settings.Elemental_OverallBIS = elementalCheckboxes[1]:GetChecked()
    IcyBIS_Settings.Elemental_RaidBIS = elementalCheckboxes[2]:GetChecked()
    IcyBIS_Settings.Elemental_MPlusBIS = elementalCheckboxes[3]:GetChecked()

    IcyBIS_Settings.Enhancement_OverallBIS = enhancementCheckboxes[1]:GetChecked()
    IcyBIS_Settings.Enhancement_RaidBIS = enhancementCheckboxes[2]:GetChecked()
    IcyBIS_Settings.Enhancement_MPlusBIS = enhancementCheckboxes[3]:GetChecked()

    IcyBIS_Settings.Restoration_OverallBIS = restorationCheckboxes[1]:GetChecked()
    IcyBIS_Settings.Restoration_RaidBIS = restorationCheckboxes[2]:GetChecked()
    IcyBIS_Settings.Restoration_MPlusBIS = restorationCheckboxes[3]:GetChecked()
end

-- Load settings when the options panel is opened
settingsFrame.refresh = function()
    -- Load the saved states for each spec checkbox
    elementalCheckboxes[1]:SetChecked(IcyBIS_Settings.Elemental_OverallBIS)
    elementalCheckboxes[2]:SetChecked(IcyBIS_Settings.Elemental_RaidBIS)
    elementalCheckboxes[3]:SetChecked(IcyBIS_Settings.Elemental_MPlusBIS)

    enhancementCheckboxes[1]:SetChecked(IcyBIS_Settings.Enhancement_OverallBIS)
    enhancementCheckboxes[2]:SetChecked(IcyBIS_Settings.Enhancement_RaidBIS)
    enhancementCheckboxes[3]:SetChecked(IcyBIS_Settings.Enhancement_MPlusBIS)

    restorationCheckboxes[1]:SetChecked(IcyBIS_Settings.Restoration_OverallBIS)
    restorationCheckboxes[2]:SetChecked(IcyBIS_Settings.Restoration_RaidBIS)
    restorationCheckboxes[3]:SetChecked(IcyBIS_Settings.Restoration_MPlusBIS)
end

-- Add the settings frame to the Interface Options
InterfaceOptions_AddCategory(settingsFrame)
