-- BossMothula.lua
-- Create BossMothula as new Boss object using constructor for setting name
BossMothula = {}

function BossMothula:new()
  local boss = Boss:new("Mothula")

  boss.canBeat = function()
    local ret = 0

    if ((hasSword() == 1) or (has("hammer") == 1) or ((canExtendMagic(2) >= 2) and ((has("firerod") == 1) or (has("somaria") == 1) or (has("byrna") == 1))) or (canGetGoodBee() == 1)) then
      ret = 1
    end

    return ret
  end

  return boss
end
-- Override default canBeat() to account for Trinexx
function BossMothula:canBeat()
  local ret = 0

  if (hasSword() or has("hammer") or (canExtendMagic(2) and (has("firerod") or has("somaria") or has("byrna"))) or canGetGoodBee()) then
    ret = 1
  end

  return ret
end
