-- BossLanmolas.lua
-- Create BossLanmolas as new Boss object using constructor for setting name
BossLanmolas = {}

function BossLanmolas:new()
  local boss = Boss:new("Lanmolas")

  boss.canBeat = function()
    local ret = 0

    if ((hasSword() == 1) or (has("hammer") == 1) or (canShootArrows() == 1) or (has("firerod") == 1) or (has("icerod") == 1) or (has("byrna") == 1) or (has("somaria") == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
