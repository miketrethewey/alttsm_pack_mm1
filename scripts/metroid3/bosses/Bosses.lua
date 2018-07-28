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
  if(canBeatBombTorizo() == 1) then
    return 1
  else
    return 0
  end
end

-- Kraid
function canBeatKraid()
  if(canBeatBombTorizo() == 1) then
    return 1
  else
    return 0
  end
end

-- Crocomire
function canBeatCrocomire()
  if(canBeatBombTorizo() == 1) then
    return 1
  else
    return 0
  end
end

-- Phantoon
function canBeatPhantoon()
  if(canBeatBombTorizo() == 1) then
    return 1
  else
    return 0
  end
end

-- Botwoon
function canBeatBotwoon()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        (canDash("sm") == 1) or (canAccessMaridiaPortal() == 1)
      ) then
      ret = 1
    end
  else if(getSMLogic() == "tournament") then
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
  if(canBeatBombTorizo() == 1) then
    return 1
  else
    return 0
  end
end

-- Ridley
function canBeatRidley()
  if(canBeatBombTorizo() == 1 and canUsePowerBombs() == 1) then
    return 1
  else
    return 0
  end
end

-- MotherBrain
function canBeatMotherBrain()
  if((canOpenRedDoors() == 1) and (
      (hasEnergyReserves(6) == 1) or ((heatProof() == 1) and (hasEnergyReserves(3) == 1))
    )) then
    return 1
  else
    return 0
  end
end
