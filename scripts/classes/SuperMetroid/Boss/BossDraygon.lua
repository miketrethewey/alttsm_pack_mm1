-- BossDraygon.lua
-- Create BossDraygon as new Boss object using constructor for setting name
BossDraygon = {}

function BossDraygon:new()
  local boss = Boss:new("Draygon")

  boss.canBeat = function()
    local ret = 0
    local botwoon = BossBotwoon:new()

    if (getSMLogic() == "casual") then
      if ((botwoon.canBeat() == 1) and (canSwim("sm") == 1) and (((canDash("sm") == 1) and (canHiJump() == 1)) or (canFly("sm") == 1))) then
        ret = 1
      end
    elseif (getSMLogic() == "tournament") then
      if ((botwoon.canBeat() == 1) and (canSwim("sm") == 1)) then
        ret = 1
      end
    end

    return ret
  end

  return boss
end
