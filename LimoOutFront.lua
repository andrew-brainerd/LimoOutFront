LimoOutFront = {}

local EventFrame = CreateFrame("frame", "EventFrame")

EventFrame:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
EventFrame:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")

EventFrame:SetScript("OnEvent", function(self, event, ...)
    if (event == "UNIT_SPELLCAST_CHANNEL_START") then
        local _, _, spellId = ...;

        if (spellId == 43987) then
            -- PlayMusic("Interface\\AddOns\\LimoOutFront\\mage3.mp3")
            -- C_Timer.After(4, StopMusic)
            PlaySoundFile("Interface\\AddOns\\LimoOutFront\\oh_yeah.mp3")
        end
    elseif (event == "UNIT_SPELLCAST_CHANNEL_STOP") then
        local _, _, spellId = ...;

        if (spellId == 43987) then
            StopMusic()
        end
    end
end)
