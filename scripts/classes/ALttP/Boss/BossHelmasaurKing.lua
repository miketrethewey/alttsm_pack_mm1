-- BossHelmasaurKing.lua
-- Create BossHelmasaurKing as new Boss object using constructor for setting name
BossHelmasaurKing = {}

function BossHelmasaurKing:new()
  local boss = Boss:new("Helmasaur King")

  boss.canBeat = function()
    local ret = 0
    if ((hasSword() >= 1) or (has("hammer") == 1) or (canShootArrows() == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
