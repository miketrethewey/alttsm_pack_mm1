-- BossArmosKnights.lua
-- Create BossArmosKnights as new Boss object using constructor for setting name
BossArmosKnights = {}

function BossArmosKnights:new()
  local boss = Boss:new("Armos Knights")

  boss.canBeat = function()
    local ret = 0

    if (
      (hasSword() == 1) or (has("hammer") == 1) or (canShootArrows() == 1)
        or (has("boomerang") == 1)
        or ((canExtendMagic(4) >= 4) and ((has("firerod") == 1) or (has("icerod") == 1)))
        or ((canExtendMagic(2) >= 2) and ((has("byrna") == 1) or (has("somaria") == 1)))
      ) then
      ret = 1
    end

    return ret
  end

  return boss
end
