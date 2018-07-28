-- BombTorizo
function canBeatBombTorizo()
  local ret = 0

  if((canOpenRedDoors() == 1) or (has("charge") == 1)) then
    ret = 1
  end

  return ret
end

-- SporeSpawn
function canBeatSporeSpawn
  return canBeatBombTorizo() == 1
end

-- Kraid
function canBeatKraid()
  return canBeatBombTorizo() == 1
end

-- Crocomire
function canBeatCrocomire()
  return canBeatBombTorizo() == 1
end

-- Phantoon
function canBeatPhantoon()
  return canBeatBombTorizo() == 1
end

-- Botwoon
function canBeatBotwoon()
  local ret = 0

  if(getSMLogic == "casual") then
    if(
        (canDash("sm") == 1) or (canAccessMaridiaPortal() == 1)
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        (has("ice") == 1) or (canDash("sm") == 1) or (canAccessMaridiaPortal() == 1)
      ) then
      ret = 1
    end
  end

  return ret
end

-- Draygon
function canBeatDraygon()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        (canBeatBotwoon() == 1) and (canSwim("sm") == 1) and (((canDash("sm") == 1) and (canHiJump() == 1)) or (canFly("sm") == 1))
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        (canBeatBotwoon() == 1) and (canSwim("sm") == 1)
      ) then
      ret = 1
    end
  end

  return ret
end

-- GoldTorizo
function canBeatGoldTorizo()
  return canBeatBombTorizo() == 1
end

-- Ridley
function canBeatRidley()
  return canBeatBombTorizo() == 1 or canUsePowerBombs() == 1
end

-- MotherBrain
function canBeatMotherBrain()
  return (canOpenRedDoors() == 1) and (
    (hasEnergyReserves(6) == 1) or ((heatProof() == 1) and (hasEnergyReserves(3) == 1))
  )
end
