-- BossMotherBrain.lua
-- Create BossMotherBrain as new Boss object using constructor for setting name
BossMotherBrain = {}

function BossMotherBrain:new()
  local boss = Boss:new("Mother Brain")

  boss.canBeat = function()
    local ret = 0

    if ((canOpenRedDoors() == 1) and ((hasEnergyReserves(6) >= 6) or ((heatProof() == 1) and (hasEnergyReserves(3) >= 3)))) then
      ret = 1
    end

    return ret
  end

  return boss
end
