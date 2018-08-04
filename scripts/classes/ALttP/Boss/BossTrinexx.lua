-- BossTrinexx.lua
-- Create BossTrinexx as new Boss object using constructor for setting name
BossTrinexx = {}

function BossTrinexx:new()
  local boss = Boss:new("Trinexx")

  boss.canBeat = function()
    local ret = 0

    if ((has("firerod") == 1) and (has("icerod") == 1) and ((hasSword(3) >= 3) or (has("hammer") == 1) or ((canExtendMagic(2) >= 2) and (hasSword(2) >= 2)) or ((canExtendMagic(4) >= 4) and (hasSword() >= 1)))) then
      ret = 1
    end

    return ret
  end

  return boss
end
