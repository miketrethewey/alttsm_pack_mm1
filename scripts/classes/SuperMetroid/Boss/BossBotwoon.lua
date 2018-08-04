-- BossBotwoon.lua
-- Create BossBotwoon as new Boss object using constructor for setting name
BossBotwoon = {}

function BossBotwoon:new()
  local boss = Boss:new("Botwoon")

  boss.canBeat = function()
    local ret = 0

    if (getSMLogic() == "casual") then
      if ((canDash("sm") == 1) or (canAccessMaridiaPortal() == 1)) then
        ret = 1
      end
    elseif (getSMLogic() == "tournament") then
      if ((has("ice") == 1) or (canDash("sm") == 1) or (canAccessMaridiaPortal() == 1)) then
        ret = 1
      end
    end

    return ret
  end

  return boss
end
