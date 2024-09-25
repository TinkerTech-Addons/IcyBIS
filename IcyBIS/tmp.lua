-- Settings Frame created in WoW Application.
-- Ideal to make it dynamic on player.
-- Clean up naming.
-- Create function for checkbox creation.
-- Add spec image to left of spec.
-- Set text for all checkboxes.

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
local function createBISTableCheckbox(name, parent, anchorPoint, x, y)
   -- Create and position check button frame
   local checkbox = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
   checkbox:SetPoint(anchorPoint, x, y)
   
   -- Create and position check button label
   local checkboxLabel = checkbox:CreateFontString(name .. "Label", "HIGHLIGHT", "GameFontHighlightMed2")
   checkboxLabel:SetText(name)
   checkboxLabel:SetPoint("LEFT", 35, 0)
   
   -- Set the check button label
   checkbox:SetFontString(checkboxLabel)
   
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
   local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], spec1, "LEFT", 35, -30)
   local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30)
   local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], spec2, "LEFT", 35, -30)
   local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30)
   createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30)
   ----------------------------------------------------------------------------------------------------------------
elseif numberOfSpecs == 4 then
   local _, name, _, icon, _, _ = GetSpecializationInfo(1)
   local spec1 = createSpecCheckbox(name, settingsFrame, "TOPLEFT", 15, -80, icon)
   local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], spec1, "LEFT", 35, -30)
   local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30)
   local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], spec2, "LEFT", 35, -30)
   local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30)
   local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(3)
   local spec3 = createSpecCheckbox(name, spec2_m_plus, "LEFT", -35, -50, icon)
   local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], spec3, "LEFT", 35, -30)
   local sepc3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30)
   local spec3_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(4)
   local spec4 = createSpecCheckbox(name, spec3_m_plus, "LEFT", -35, -50, icon)
   local spec4_ocerall = createBISTableCheckbox(icyBISTableNames[1], spec4, "LEFT", 35, -30)
   local spec4_raid = createBISTableCheckbox(icyBISTableNames[2], spec4_ocerall, "LEFT", 0, -30)
   createBISTableCheckbox(icyBISTableNames[3], spec4_raid, "LEFT", 0, -30)
   ----------------------------------------------------------------------------------------------------------------
else
   local _, name, _, icon, _, _ = GetSpecializationInfo(1)
   local spec1 = createSpecCheckbox(name, settingsFrame, "TOPLEFT", 15, -80, icon)
   local spec1_overall = createBISTableCheckbox(icyBISTableNames[1], spec1, "LEFT", 35, -30)
   local sepc1_raid = createBISTableCheckbox(icyBISTableNames[2], spec1_overall, "LEFT", 0, -30)
   local spec1_m_plus = createBISTableCheckbox(icyBISTableNames[3], sepc1_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(2)
   local spec2 = createSpecCheckbox(name, spec1_m_plus, "LEFT", -35, -50, icon)
   local spec2_ocerall = createBISTableCheckbox(icyBISTableNames[1], spec2, "LEFT", 35, -30)
   local spec2_raid = createBISTableCheckbox(icyBISTableNames[2], spec2_ocerall, "LEFT", 0, -30)
   local spec2_m_plus = createBISTableCheckbox(icyBISTableNames[3], spec2_raid, "LEFT", 0, -30)
   
   _, name, _, icon, _, _ = GetSpecializationInfo(3)
   local spec3 = createSpecCheckbox(name, spec2_m_plus, "TOPLEFT", -35, -50, icon)
   local spec3_overall = createBISTableCheckbox(icyBISTableNames[1], spec3, "LEFT", 35, -30)
   local sepc3_raid = createBISTableCheckbox(icyBISTableNames[2], spec3_overall, "LEFT", 0, -30)
   createBISTableCheckbox(icyBISTableNames[3], sepc3_raid, "LEFT", 0, -30)
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

-- Above code should make the same structure as below but with using functions. Need to test
-- local checkbox1 = CreateFrame("checkButton", "checkbox1", description, "UICheckButtonTemplate")
-- checkbox1:SetPoint("TOPLEFT", 15, -50)
-- local checkbox1Text = checkbox1:CreateFontString("checkbox1", "HIGHLIGHT", "GameFontHighlightMed2")
-- checkbox1Text:SetText("Arms")
-- checkbox1Text:SetPoint("LEFT", 60, 0)
-- checkbox1:SetFontString(checkbox1Text)

-- local subCheckbox1 = CreateFrame("checkButton", "subCheckbox1", checkbox1, "UICheckButtonTemplate")
-- subCheckbox1:SetPoint("LEFT", 35, -30)
-- local subCheckbox2 = CreateFrame("checkButton", "subCheckbox2", subCheckbox1, "UICheckButtonTemplate")
-- subCheckbox2:SetPoint("LEFT", 0, -30)
-- local subCheckbox3 = CreateFrame("checkButton", "subCheckbox3", subCheckbox2, "UICheckButtonTemplate")
-- subCheckbox3:SetPoint("LEFT", 0, -30)

-- local checkbox2 = CreateFrame("checkButton", "checkbox2", subCheckbox3, "UICheckButtonTemplate")
-- checkbox2:SetPoint("LEFT", -35, -50)

-- local subCheckbox4 = CreateFrame("checkButton", "subCheckbox4", checkbox2, "UICheckButtonTemplate")
-- subCheckbox4:SetPoint("LEFT", 35, -30)
-- local subCheckbox5 = CreateFrame("checkButton", "subCheckbox5", subCheckbox4, "UICheckButtonTemplate")
-- subCheckbox5:SetPoint("LEFT", 0, -30)
-- local subCheckbox6 = CreateFrame("checkButton", "subCheckbox6", subCheckbox5, "UICheckButtonTemplate")
-- subCheckbox6:SetPoint("LEFT", 0, -30)

-- local checkbox3 = CreateFrame("checkButton", "checkbox3", subCheckbox6, "UICheckButtonTemplate")
-- checkbox3:SetPoint("LEFT", -35, -50)

-- local subCheckbox7 = CreateFrame("checkButton", "subCheckbox7", checkbox3, "UICheckButtonTemplate")
-- subCheckbox7:SetPoint("LEFT", 35, -30)
-- local subCheckbox8 = CreateFrame("checkButton", "subCheckbox8", subCheckbox7, "UICheckButtonTemplate")
-- subCheckbox8:SetPoint("LEFT", 0, -30)
-- local subCheckbox9 = CreateFrame("checkButton", "subCheckbox9", subCheckbox8, "UICheckButtonTemplate")
-- subCheckbox9:SetPoint("LEFT", 0, -30)

-- local checkbox4 = CreateFrame("checkButton", "checkbox4", subCheckbox9, "UICheckButtonTemplate")
-- checkbox4:SetPoint("LEFT", -35, -50)

-- local subCheckbox10 = CreateFrame("checkButton", "subCheckbox10", checkbox4, "UICheckButtonTemplate")
-- subCheckbox10:SetPoint("LEFT", 35, -30)
-- local subCheckbox11 = CreateFrame("checkButton", "subCheckbox11", subCheckbox10, "UICheckButtonTemplate")
-- subCheckbox11:SetPoint("LEFT", 0, -30)
-- local subCheckbox12 = CreateFrame("checkButton", "subCheckbox12", subCheckbox11, "UICheckButtonTemplate")
-- subCheckbox12:SetPoint("LEFT", 0, -30)


-- local testImage = checkbox1:CreateTexture(nil, "ARTWORK")
-- testImage:SetSize(19, 19)
-- testImage:SetPoint("RIGHT", 25, 0)
-- testImage:SetTexture(132355)

-- local testImage2 = checkbox2:CreateTexture(nil, "ARTWORK")
-- testImage2:SetSize(19, 19)
-- testImage2:SetPoint("RIGHT", 25, 0)
-- testImage2:SetTexture(132341)
