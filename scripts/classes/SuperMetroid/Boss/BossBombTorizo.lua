-- BossBombTorizo.lua
-- Create BossBombTorizo as new Boss object using constructor for setting name
BossBombTorizo = {}

function BossBombTorizo:new()
  local boss = Boss:new("Bomb Torizo")

  boss.canBeat = function()
    local ret = 0

    if ((canOpenRedDoors() == 1) or (has("charge") == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
