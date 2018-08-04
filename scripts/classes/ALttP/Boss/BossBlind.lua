-- BossBlind.lua
-- Create BossBlind as new Boss object using constructor for setting name
BossBlind = {}

function BossBlind:new()
  local boss = Boss:new("Blind")

  boss.canBeat = function()
    local ret = 0

    if (
      (hasSword() >= 1) or (has("hammer") == 1)
        or (has("somaria") == 1) or (has("byrna") == 1)
      ) then
      ret = 1
    end

    return ret
  end

  return boss
end
