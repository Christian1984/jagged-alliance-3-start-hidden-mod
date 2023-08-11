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
    print("isConflict", isConflict)

    if isConflict then
        -- get all player mercs
        local mercsInSector = GetPlayerMercsInSector(gv_CurrentSectorId)
        print("#mercsInSector", #mercsInSector)

        -- call Hide() on all player mercs
        for _, merc in ipairs(mercsInSector) do
            print("------------------------")
            print("merc", merc)

            local unit = gv_UnitData[merc]
            if unit then
                print("unit", unit)
                print("here1")
                local isDowned = unit:IsDowned() -- <- this function can be called
                print("here2")
                print("unit:IsDowned()", isDowned)
                print("here3")
                unit:Hide() -- <- this function cannot be called
                print("??? execution never gets here")
            end
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
