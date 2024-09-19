-- simple ui for toggling displays

-- SettingnsUI.lua

-- Table to hold character-specific settings
IcyBIS_Settings = IcyBIS_Settings or {}

-- Frame for the settings UI
local settingsFrame = CreateFrame("Frame", "IcyBIS_SettingsFrame", InterfaceOptionsFramePanelContainer)
settingsFrame.name = "Icy BIS Addon"

-- Function to create checkboxes
local function createCheckbox(name, label, parent, anchorPoint, relativeTo, relativePoint, x, y, tooltip)
    local checkBox = CreateFrame("CheckButton", name, parent, "InterfaceOptionsCheckButtonTemplate")
    checkBox:SetPoint(anchorPoint, relativeTo, relativePoint, x, y)
    _G[checkBox:GetName() .. "Text"]:SetText(label)
    checkBox.tooltipText = tooltip
    return checkBox
end

-- Class-wide override checkbox
local classOverrideCheckbox = createCheckbox(
    "IcyBIS_ClassOverride",
    "Enable for entire class",
    settingsFrame,
    "TOPLEFT",
    settingsFrame,
    "TOPLEFT",
    20,
    -20,
    "Overrides spec-specific settings and enables tracking for all specs."
)

-- Checkboxes for character specs
local spec1Checkbox = createCheckbox(
    "IcyBIS_Spec1",
    "Enable for Spec 1",
    settingsFrame,
    "TOPLEFT",
    classOverrideCheckbox,
    "BOTTOMLEFT",
    0,
    -10,
    "Enable tracking for your first specialization."
)
local spec2Checkbox = createCheckbox(
    "IcyBIS_Spec2",
    "Enable for Spec 2",
    settingsFrame,
    "TOPLEFT",
    spec1Checkbox,
    "BOTTOMLEFT",
    0,
    -10,
    "Enable tracking for your second specialization."
)
local spec3Checkbox = createCheckbox(
    "IcyBIS_Spec3",
    "Enable for Spec 3",
    settingsFrame,
    "TOPLEFT",
    spec2Checkbox,
    "BOTTOMLEFT",
    0,
    -10,
    "Enable tracking for your third specialization."
)

-- Save settings when the options panel is closed
settingsFrame.okay = function()
    IcyBIS_Settings.classOverride = classOverrideCheckbox:GetChecked()
    IcyBIS_Settings.spec1Enabled = spec1Checkbox:GetChecked()
    IcyBIS_Settings.spec2Enabled = spec2Checkbox:GetChecked()
    IcyBIS_Settings.spec3Enabled = spec3Checkbox:GetChecked()
end

-- Load settings when the options panel is opened
settingsFrame.refresh = function()
    classOverrideCheckbox:SetChecked(IcyBIS_Settings.classOverride)
    spec1Checkbox:SetChecked(IcyBIS_Settings.spec1Enabled)
    spec2Checkbox:SetChecked(IcyBIS_Settings.spec2Enabled)
    spec3Checkbox:SetChecked(IcyBIS_Settings.spec3Enabled)
end

-- Add the settings frame to the Interface Options
InterfaceOptions_AddCategory(settingsFrame)


-- Add to new map addon compartment, clicking should open up ui

AddonCompartmentFrame:RegisterAddon({
    text = "My Addon",
    icon = "Interface\\Icons\\TEMP.blp",
    notCheckable = true,
    func = function()
        print("Hello from the addon compartment!")
    end,
})
