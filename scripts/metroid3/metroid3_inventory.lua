-- canHiJump : hijump
function canHiJump()
  if(has("hijump") == 1) then
    return 1
  else
    return 0
  end
end

-- canMorph : morph
function canMorph()
  if(has("morph") == 1) then
    return 1
  else
    return 0
  end
end

-- canSpringBallJump : canMorph && springball
function canSpringBallJump()
  if((canMorph() == 1) and (has("springball") == 1)) then
    return 1
  else
    return 0
  end
end

-- canUseMorphBombs : canMorph && bomb
function canUseMorphBombs()
  if((canMorph() == 1) and (has("bomb") == 1)) then
    return 1
  else
    return 0
  end
end

-- canUsePowerBombs : canMorph && powerbomb
function canUsePowerBombs()
  if((canMorph() == 1) and (has("powerbomb") == 1)) then
    return 1
  else
    return 0
  end
end

-- canOpenGreenDoors : supermissile
function canOpenGreenDoors()
  if((has("supermissile") == 1)) then
    return 1
  else
    return 0
  end
end

-- canOpenRedDoors : missile
function canOpenRedDoors()
  if((has("missile") == 1)) then
    return 1
  else
    return 0
  end
end

-- canOpenYellowDoors : canUsePowerBombs
function canOpenYellowDoors()
  if((canUsePowerBombs() == 1)) then
    return 1
  else
    return 0
  end
end

-- canIbj : canUseMorphBombs -- Tech
function canIbj()
  if((canUseMorphBombs() == 1)) then
    return 1
  else
    return 0
  end
end

-- canPassBombPassages : canIbj || canUsePowerBombs
function canPassBombPassages()
  if((canIbj() == 1) or (canUsePowerBombs() == 1)) then
    return 1
  else
    return 0
  end
end

-- canBomb : canUseMorphBombs || canUsePowerBombs
function canBomb()
  if((canUseMorphBombs() == 1) or (canUsePowerBombs() == 1)) then
    return 1
  else
    return 0
  end
end

-- canDestroyBombWalls : canBomb || screw
function canDestroyBombWalls()
  if((canBomb() == 1) or (has("screw") == 1)) then
    return 1
  else
    return 0
  end
end

-- hasEnergyReserves : etanks + rtanks
function hasEnergyReserves(amount)
  amount = amount or 0
  local ret = 0

  if((getHas("etank") + getHas("rtank")) >= amount) then
    ret = 1
  end

  return ret
end

-- heatProof : varia
function heatProof()
  if(has("varia") == 1) then
    return 1
  else
    return 0
  end
end

-- Tech
-- canAlcatraz : tourney && canMorph
function canAlcatraz()
  if((has("m3tournament") == 1) and (canMorph() == 1)) then
    return 1
  else
    return 0
  end
end

-- canCrystalFlash : missile:10 && supermissile:10 && powerbombs:11
function canCrystalFlash()
  if((has("missile",10) == 1) and (has("supermissile",10) == 1) and (has("powerbombs",11) == 1)) then
    return 1
  else
    return 0
  end
end

-- canDBoostBrinstarBlueCeiling : tourney
function canDBoostBrinstarBlueCeiling()
  if(has("m3tournament") == 1) then
    return 1
  else
    return 0
  end
end

-- canHellRun : varia || alltanks:5
function canHellRun()
  if((heatProof() == 1) or (hasEnergyReserves(5) == 1)) then
    return 1
  else
    return 0
  end
end

-- canMidAirPBomb : canUsePowerBombs
function canMidAirPBomb()
  if(canUsePowerBombs() == 1) then
    return 1
  else
    return 0
  end
end

-- canEnterAndLeaveGauntlet
function canEnterAndLeaveGauntlet()
  local ret = 0

  if((canFly("sm") or canHiJump() or canDash("sm"))
    and canIbj()
      or (canOpenYellowDoors() and has("powerbomb",2))
      or has("screw")
      or (canDash("sm") and canOpenYellowDoors() and hasEnergyReserves(2))) then
    ret = 1
  end

  return ret
end

-- getSMLogic
function getSMLogic()
  local ret = ""
  local m3logics = {"casual","tournament"}

  for i, logic in ipairs(m3logics) do
    if(has("m3" .. logic) == 1) then
      ret = logic
    end
  end

  return ret
end
