-- Settings Frame created in WoW Application. 
-- Ideal to make it dynamic on player. 
-- Clean up naming. 
-- Create function for checkbox creation.
-- Add spec image to left of spec.
-- Set text for all checkboxes.

--#region Loop to get players specs
for spec = 1, GetNumSpecializations() do
    local _, name, _, icon, _, _ = GetSpecializationInfo(spec)
    print(name)
    print(icon)
end
--#endregion

local settingsFrame = CreateFrame("Frame", "SettingsUIFrame", UIParent, "BasicFrameTemplate")
settingsFrame.name = "IcyBIS Settings"
settingsFrame:Hide()
settingsFrame:SetSize(375, 375) -- if class has 4 specs, height=650, elseif class has 2 specs, height=375 else hight=500 for normal 3 spec class
settingsFrame:SetPoint("RIGHT")
settingsFrame:SetMovable(true)
settingsFrame:EnableMouse(true)

settingsFrame:Show()

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

local title = settingsFrame:CreateFontString("settingsFrameTitle", "OVERLAY", "GameFontHighlightMed2")
title:SetPoint("TOP", settingsFrame, 0, -4)
title:SetText("|cFF38CBFEIcy|r|cFFFF8F00BIS|r Settings")

local description = settingsFrame:CreateFontString("settingsFrameDescription", "OVERLAY", "GameFontHighlightMed2")
description:SetPoint("TOPLEFT", 15, -40)
description:SetSize(345, 0)
description:SetWordWrap(true)
description:SetText("Select specalization(s) and Icy Veins BIS tables to track")
description:SetJustifyH("LEFT")

local checkbox1 = CreateFrame("checkButton", "checkbox1", settingsFrame, "UICheckButtonTemplate")
checkbox1:SetPoint("TOPLEFT", 15, -90)
local checkbox1Text = checkbox1:CreateFontString("checkbox1", "HIGHLIGHT", "GameFontHighlightMed2")
checkbox1Text:SetText("Arms")
checkbox1Text:SetPoint("LEFT", 60, 0)
checkbox1:SetFontString(checkbox1Text)

local subCheckbox1 = CreateFrame("checkButton", "subCheckbox1", checkbox1, "UICheckButtonTemplate")
subCheckbox1:SetPoint("LEFT", 35, -30)
local subCheckbox2 = CreateFrame("checkButton", "subCheckbox2", subCheckbox1, "UICheckButtonTemplate")
subCheckbox2:SetPoint("LEFT", 0, -30)
local subCheckbox3= CreateFrame("checkButton", "subCheckbox3", subCheckbox2, "UICheckButtonTemplate")
subCheckbox3:SetPoint("LEFT", 0, -30)

local checkbox2 = CreateFrame("checkButton", "checkbox2", subCheckbox3, "UICheckButtonTemplate")
checkbox2:SetPoint("LEFT", -35, -50)

local subCheckbox4 = CreateFrame("checkButton", "subCheckbox4", checkbox2, "UICheckButtonTemplate")
subCheckbox4:SetPoint("LEFT", 35, -30)
local subCheckbox5 = CreateFrame("checkButton", "subCheckbox5", subCheckbox4, "UICheckButtonTemplate")
subCheckbox5:SetPoint("LEFT", 0, -30)
local subCheckbox6 = CreateFrame("checkButton", "subCheckbox6", subCheckbox5, "UICheckButtonTemplate")
subCheckbox6:SetPoint("LEFT", 0, -30)

local checkbox3 = CreateFrame("checkButton", "checkbox3", subCheckbox6, "UICheckButtonTemplate")
checkbox3:SetPoint("LEFT", -35, -50)

local subCheckbox7 = CreateFrame("checkButton", "subCheckbox7", checkbox3, "UICheckButtonTemplate")
subCheckbox7:SetPoint("LEFT", 35, -30)
local subCheckbox8 = CreateFrame("checkButton", "subCheckbox8", subCheckbox7, "UICheckButtonTemplate")
subCheckbox8:SetPoint("LEFT", 0, -30)
local subCheckbox9 = CreateFrame("checkButton", "subCheckbox9", subCheckbox8, "UICheckButtonTemplate")
subCheckbox9:SetPoint("LEFT", 0, -30)

local checkbox4 = CreateFrame("checkButton", "checkbox4", subCheckbox9, "UICheckButtonTemplate")
checkbox4:SetPoint("LEFT", -35, -50)

local subCheckbox10 = CreateFrame("checkButton", "subCheckbox10", checkbox4, "UICheckButtonTemplate")
subCheckbox10:SetPoint("LEFT", 35, -30)
local subCheckbox11 = CreateFrame("checkButton", "subCheckbox11", subCheckbox10, "UICheckButtonTemplate")
subCheckbox11:SetPoint("LEFT", 0, -30)
local subCheckbox12 = CreateFrame("checkButton", "subCheckbox12", subCheckbox11, "UICheckButtonTemplate")
subCheckbox12:SetPoint("LEFT", 0, -30)


local testImage = checkbox1:CreateTexture(nil, "ARTWORK")
testImage:SetSize(19, 19)
testImage:SetPoint("RIGHT", 25, 0)
testImage:SetTexture(132355)

local testImage2 = checkbox2:CreateTexture(nil, "ARTWORK")
testImage2:SetSize(19, 19)
testImage2:SetPoint("RIGHT", 25, 0)
testImage2:SetTexture(132341)
