local f = CreateFrame("Frame")

local function checkStatus()
	local inCombat = InCombatLockdown()
	if not inCombat then
	--AudioOptionsVoicePanelVoiceChatDucking:GetValue()
		C_Timer.After(3, function() SetCVar("VoiceChatMasterVolumeScale", "1") AudioOptionsVoicePanelVoiceChatDucking:SetValue(0) end)
	end
end

f:SetScript("OnEvent", checkStatus)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
