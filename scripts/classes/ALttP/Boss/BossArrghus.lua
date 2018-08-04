-- BossArrghus.lua
-- Create BossArrghus as new Boss object using constructor for setting name
BossArrghus = {}

function BossArrghus:new()
  local boss = Boss:new("Arrghus")

  boss.canBeat = function()
    local ret = 0

    if (
      (canGrapple() == 1) and ((has("hammer") == 1) or (hasSword() >= 1)
      or (((canExtendMagic(2) >= 2) or (canShootArrows() == 1)) and ((has("firerod") == 1) or (has("icerod") == 1))))
    ) then
      ret = 1
    end

    return ret
  end

  return boss
end
