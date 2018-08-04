-- BossRidley.lua
-- Create BossRidley as new Boss object using constructor for setting name
BossRidley = {}

function BossRidley:new()
  local boss = Boss:new("Gold Torizo")
  local bt = BombTorizo:new()

  boss.canBeat = function()
    local ret = 0

    if ((bt.canBeat() == 1) and (canUsePowerBombs() == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
