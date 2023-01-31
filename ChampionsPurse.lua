local frame = CreateFrame("Frame")
frame:RegisterEvent("QUEST_COMPLETE")

frame:SetScript("OnEvent", function(self, event, ...)
    -- Check for the reward named "Champion's Purse"
    local rewards = GetNumQuestChoices()
    for i = 1, rewards do
        local rewardName = GetQuestItemInfo("choice", i)
        if rewardName == "Champion's Purse" then
            GetQuestReward(i)
            break
        end
    end
end)
