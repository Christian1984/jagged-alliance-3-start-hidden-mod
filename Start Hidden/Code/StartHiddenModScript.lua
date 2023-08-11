OnMsg.ExplorationStart = function()
    log("SH -> ExplorationStart enter...")

    -- check if enemies are in sector
    local isConflict = IsConflictMode(gv_CurrentSectorId)

    if isConflict then
        -- get all player mercs
        local mercsInSector = GetPlayerMercsInSector(gv_CurrentSectorId)

        -- call Hide() on all player mercs
        for _, merc in ipairs(mercsInSector) do
            local unit = g_Units[merc]
            if unit then
                unit:SetActionCommand("Hide")
                print("SH ->", merc, "hides")
            end
        end
    end

    log("SH -> ExplorationStart done!")
end

-- setup
local function ApplyMod()
    -- log("ApplyMod() called")
end

OnMsg.ApplyModOptions = ApplyMod
OnMsg.ModsReloaded = ApplyMod

OnMsg.GameStarted = function()
    -- log("Received GameStarted")
    ApplySettings()
end
