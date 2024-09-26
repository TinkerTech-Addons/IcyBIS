-- Settings Frame created in WoW Application.
-- Ideal to make it dynamic on player.
-- Clean up naming.
-- Create function for checkbox creation.
-- Add spec image to left of spec.
-- Set text for all checkboxes.
if not IcyBIS_Settings then
   IcyBIS_Settings = {}
end


--#region Loop to get players specs
local numberOfSpecs = GetNumSpecializations()

for spec = 1, GetNumSpecializations() do
   local _, name, _, icon, _, _ = GetSpecializationInfo(spec)
   print(name)
   print(icon)
end
--#endregion

local settingsFrame = CreateFrame("Frame", "SettingsUIFrame", UIParent, "BasicFrameTemplate")
settingsFrame.name = "IcyBIS Settings"
settingsFrame:Hide()
settingsFrame:SetPoint("RIGHT")
settingsFrame:SetMovable(true)
settingsFrame:EnableMouse(true)

-- if class has 4 specs, height=650, elseif class has 2 specs, height=375 else hight=500 for normal 3 spec class
if numberOfSpecs == 2 then
   settingsFrame:SetSize(300, 375)
elseif numberOfSpecs == 4 then
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
end

--#region Spec checkbox creation function
local function createSpecCheckbox(name, parent, anchorPoint, x, y, icon)
   -- Create and position check button frame
   local checkbox = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
   checkbox:SetPoint(anchorPoint, x, y)

   -- Create and position spec image to the right of check button
   local checkboxSpecImage = checkbox:CreateTexture(name .. "SpecImage", "ARTWORK")
   checkboxSpecImage:SetSize(19, 19)
   checkboxSpecImage:SetPoint("RIGHT", 25, 0)
   checkboxSpecImage:SetTexture(icon)

   -- Create and position check button label
   local checkboxLabel = checkbox:CreateFontString(name .. "Label", "HIGHLIGHT", "GameFontHighlightMed2")
   checkboxLabel:SetText(name)
   checkboxLabel:SetPoint("LEFT", 60, 0)

   -- Set the check button label
   checkbox:SetFontString(checkboxLabel)

   -- Return the check button
   return checkbox
end
--#endregion

--#region IcyBIS table checkbox creation function
local function createBISTableCheckbox(name, parent, anchorPoint, x, y, checkboxSettingName)
   -- Create and position check button frame
   local checkbox = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
   checkbox:SetPoint(anchorPoint, x, y)

   -- Create and position check button label
   local checkboxLabel = checkbox:CreateFontString(name .. "Label", "HIGHLIGHT", "GameFontHighlightMed2")
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
local icyBISTableNames = { "Overall BIS:", "Raid BIS:", "M+ BIS:" }
print(numberOfSpecs)
if numberOfSpecs == 2 then
   local _, name, _, icon, _, _ = GetSpecializationInfo(1)
   local spec1 = createSpecCheckbox(name, settingsFrame, "TOPLEFT", 15, -80, icon)
   local spec1_overall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec1, "LEFT", 35, -30, "Spec 1 Overall BIS")
   local sepc1_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
   local spec1_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec2, "LEFT", 35, -30, "Spec 2 Overall BIS")
   local spec2_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
   createBISTableCheckbox(name .. " " .. icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")
   ----------------------------------------------------------------------------------------------------------------
elseif numberOfSpecs == 4 then
   local _, name, _, icon, _, _ = GetSpecializationInfo(1)
   local spec1 = createSpecCheckbox(name, settingsFrame, "TOPLEFT", 15, -80, icon)
   local spec1_overall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec1, "LEFT", 35, -30, "Spec 1 Overall BIS")
   local sepc1_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
   local spec1_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec2, "LEFT", 35, -30, "Spec 2 Overall BIS")
   local spec2_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
   local spec2_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(3)
   local spec3 = createSpecCheckbox(name, spec2_m_plus, "LEFT", -35, -50, icon)
   local spec3_overall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec3, "LEFT", 35, -30, "Spec 3 Overall BIS")
   local sepc3_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec3_overall, "LEFT", 0, -30, "Spec 3 Raid BIS")
   local spec3_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30, "Spec 3 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(4)
   local spec4 = createSpecCheckbox(name, spec3_m_plus, "LEFT", -35, -50, icon)
   local spec4_ocerall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec4, "LEFT", 35, -30, "Spec 4 Overall BIS")
   local spec4_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec4_ocerall, "LEFT", 0, -30, "Spec 4 Raid BIS")
   createBISTableCheckbox(name .. " " .. icyBISTableNames[3], spec4_raid, "LEFT", 0, -30, "Spec 4 M+ BIS")
   ----------------------------------------------------------------------------------------------------------------
else
   local _, name, _, icon, _, _ = GetSpecializationInfo(1)
   local spec1 = createSpecCheckbox(name, settingsFrame, "TOPLEFT", 15, -80, icon)
   local spec1_overall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec1, "LEFT", 35, -30, "Spec 1 Overall BIS")
   local sepc1_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec1_overall, "LEFT", 0, -30, "Spec 1 Raid BIS")
   local spec1_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30, "Spec 1 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec2, "LEFT", 35, -30, "Spec 2 Overall BIS")
   local spec2_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30, "Spec 2 Raid BIS")
   local spec2_m_plus = createBISTableCheckbox(name .. " " .. icyBISTableNames[3], spec2_raid, "LEFT", 0, -30, "Spec 2 M+ BIS")

   _, name, _, icon, _, _ = GetSpecializationInfo(3)
   local spec3 = createSpecCheckbox(name, spec2_m_plus, "TOPLEFT", -35, -50, icon)
   local spec3_overall = createBISTableCheckbox(name .. " " .. icyBISTableNames[1], spec3, "LEFT", 35, -30, "Spec 3 Overall BIS")
   local sepc3_raid = createBISTableCheckbox(name .. " " .. icyBISTableNames[2], spec3_overall, "LEFT", 0, -30, "Spec 3 Raid BIS")
   createBISTableCheckbox(name .. " " .. icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30, "Spec 3 M+ BIS")
end

-- --#region Loop through class specs and create checkboxes
-- local icyBISTableNames = { "Overall BIS:", "Raid BIS:", "M+ BIS:" }
-- local yOffset = -50
-- for spec = 1, GetNumSpecializations() do
--     local _, name, _, icon, _, _ = GetSpecializationInfo(spec)
--     createSpecCheckbox(name, description, "TOPLEFT", 15, yOffset, "This is the SPEC Tooltip Text", icon)
--     yOffset = yOffset - 50

--     for _, BISTable in ipairs(icyBISTableNames) do
--         createBISTableCheckbox(BISTable, "", "LEFT", 0, 0, "TOOLTIP")
--         yOffset = yOffset - 30
--     end
-- end
-- --#endregion
