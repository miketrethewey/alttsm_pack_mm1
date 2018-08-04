-- BossMoldorm.lua
-- Create BossMoldorm as new Boss object using constructor for setting name
BossMoldorm = {}
function BossMoldorm:new()
  local boss = Boss:new("Moldorm")

  boss.canBeat = function()
    local ret = 0

    if ((hasSword() == 1) or (has("hammer") == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
