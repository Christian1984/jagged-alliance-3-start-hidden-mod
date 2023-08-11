local CurrentModDef = CurrentModDef
local options = CurrentModDef.options

local logToConsole = true
local logToSnype = true

-- helper functions
local function log(msg)
    if logToConsole then
        print("SH -> ", msg)
    end
    if logToSnype then
        CombatLog("debug", "SH -> " .. msg)
    end
end

-- handle exploration start
OnMsg.ExplorationStart = function()
    log("ExplorationStart enter...")

    -- check if enemies are in sector
    local isConflict = IsConflictMode(gv_CurrentSectorId)
    -- print("IsConflictMode", IsConflictMode)
    print("isConflict", isConflict)

    -- get all player mercs
    for _, squad in ipairs(g_PlayerSquads) do

        if squad.CurrentSector == gv_CurrentSectorId then
            for _, merc in pairs(squad.units) do
                local unit = g_Units[merc]

                if unit then
                    print("unit", unit)
                    -- print("unit.Hide", unit.Hide)
                    -- print("unit:Hide", unit:Hide)

                    -- unit.Hide()
                end
            end
        else
            print("squad skipped, not in sector")
        end
    end


    log("ExplorationStart done!")
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
