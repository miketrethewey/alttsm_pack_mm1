-- BossVitreous.lua
-- Create BossVitreous as new Boss object using constructor for setting name
BossVitreous = {}

function BossVitreous:new()
  local boss = Boss:new("Vitreous")

  boss.canBeat = function()
    local ret = 0

    if ((has("hammer") == 1) or (hasSword() == 1) or (canShootArrows() == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
